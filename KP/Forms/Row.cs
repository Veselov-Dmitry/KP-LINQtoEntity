using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using KP.Models;

namespace KP
{
    public partial class Row : Form
    {
        private ContextView cv = new ContextView();
        private List<Presentation> tab = new List<Presentation>();
        private List<Label> labels = new List<Label>();
        private List<Control> texts = new List<Control>();
        private List<string> formBackup = new List<string>();
        private bool isEditMode = false;
        public Row(object tab)
        {
            InitializeComponent();
            this.tab = tab as List<Presentation>;
        }

        private void Start(object sender, EventArgs e)
        {
            int stepY = 26;
            int tabIndex = 0;
            Point lbXy = new Point(12, 9);
            Point tbXy = new Point(100, 6);
            Size lbS = new Size(37, 15);
            Size tbS = new Size(200, 20);
            Size WinS = new Size(330, 110);
            int counter = 0;
            foreach (var op in tab[0].Properties)
            {
                if (op != "@null")
                {
                    this.Size = WinS;
                    this.MinimumSize = WinS;

                    Label someLabel = new Label();
                    TextBox someTextBox = new TextBox();

                    someLabel.Name = "Label" + tab[0].Names[counter];
                    someLabel.AutoSize = true;
                    someLabel.Text = tab[0].Names[counter];
                    someLabel.Location = lbXy;
                    someLabel.Size = lbS;
                    someLabel.Visible = true;

                    someTextBox.Name = "TextBox" + tab[0].Names[counter];
                    someTextBox.Location = tbXy;
                    someTextBox.Size = tbS;
                    someTextBox.Text = op;
                    someTextBox.TabIndex = tabIndex;
                    someTextBox.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left)
            | System.Windows.Forms.AnchorStyles.Right)));
                    someTextBox.Visible = true;
                    someTextBox.ReadOnly = true;

                    this.Controls.Add(someTextBox);
                    this.Controls.Add(someLabel);
                    labels.Add(someLabel);
                    texts.Add(someTextBox);

                    lbXy.Y += stepY;
                    tbXy.Y += stepY;
                    WinS.Height += stepY;
                    tabIndex++;
                    this.Update();
                }
                counter++;
            }
        }

        private void EditButton_Click(object sender, EventArgs e)
        {
            if (isEditMode) {
                SaveMode();
                DelButton.Visible = true;
                EditButton.Text = "Редактировать";
                CancelButtuon.Text = "Закрыть";
                isEditMode = false;
            }
            else
            {
                PrepeareToEdit();
                DelButton.Visible = false;
                EditButton.Text = "Сохранить";
                CancelButtuon.Text = "Отмена";
                isEditMode = true;
            }
        }

        private void SaveMode()
        {
            throw new NotImplementedException();
        }

        private void PrepeareToEdit()
        {
            CopyFormData();
            foreach (Label op in labels)
            {
                switch (op.Text)
                {
                    case "EmpFIO":
                        {
                            //COMBOBOX:
                            //office
                            //department
                            //profission
                            int de = ChangeControls("Department", typeof(ComboBox), new ComboBox(), out string strVal);
                            (texts[de] as ComboBox).Items.AddRange(cv.GetAllDepartment().ToArray());
                            (texts[de] as ComboBox).SelectedIndex = (texts[de] as ComboBox).Items.IndexOf(strVal);
                            (texts[de] as ComboBox).SelectedIndexChanged += new System.EventHandler(this.ComboBox_SelectionChangeCommitted);

                            int of = ChangeControls("Office", typeof(ComboBox), new ComboBox(), out strVal);
                            (texts[of] as ComboBox).Items.AddRange(cv.GetAllOffice(texts[de].Text).ToArray());
                            (texts[of] as ComboBox).SelectedIndex = (texts[of] as ComboBox).Items.IndexOf(strVal);

                            if (tab[0].Computer != "@null")
                            {
                                //COMBOBOX:
                                //Employee

                                int em = ChangeControls("EmpFIO", typeof(ComboBox), new ComboBox(), out strVal);
                                (texts[em] as ComboBox).Items.AddRange(cv.GetAllEmploee(texts[de].Text, texts[of].Text).ToArray());
                                (texts[em] as ComboBox).SelectedIndex = (texts[em] as ComboBox).Items.IndexOf(strVal);

                                int co = ChangeControls("Computer", typeof(ComboBox), new ComboBox(), out strVal);
                                (texts[co] as ComboBox).Items.AddRange(cv.GetAllComputer().ToArray());
                                (texts[co] as ComboBox).SelectedIndex = (texts[co] as ComboBox).Items.IndexOf(strVal);
                            }


                            int pr = ChangeControls("Profession", typeof(ComboBox), new ComboBox(), out strVal);
                            (texts[pr] as ComboBox).Items.AddRange(cv.GetAllProfession().ToArray());
                            (texts[pr] as ComboBox).SelectedIndex = (texts[pr] as ComboBox).Items.IndexOf(strVal);

                            foreach (object ty in texts)
                            {
                                if(ty.GetType() == typeof(TextBox))
                                {
                                    (ty as TextBox).ReadOnly = false;
                                }
                            }

                            break;
                        }
                    case "Office":
                        {
                            //COMBOBOX:
                            //department
                            if (tab[0].EmpFIO == "@null")
                            {
                                int de = ChangeControls("Department", typeof(ComboBox), new ComboBox(), out string strVal);
                                (texts[de] as ComboBox).Items.AddRange(cv.GetAllDepartment().ToArray());
                                (texts[de] as ComboBox).SelectedIndex = (texts[de] as ComboBox).Items.IndexOf(strVal);

                                foreach (object ty in texts)
                                    if (ty.GetType() == typeof(TextBox))
                                        (ty as TextBox).ReadOnly = false;
                            }
                            break;
                        }
                    default: { break; }
                }
            }
        }

        private void CopyFormData()
        {
            
            foreach (var op in texts)
            {
                formBackup.Add(op.Text);
            }
        }

        private int ChangeControls(string typeNew, Type tpNew, Control someControl, out string text)
        {
            int re = 0;
            foreach (var we in texts)
            {
                if (we.Name.Contains(typeNew))
                    break;
                re++;
            }
            Size sz;
            Point pt;
            int tabIndex = 0;
            sz = texts[re].Size;
            pt = texts[re].Location;
            text = texts[re].Text;
            tabIndex = texts[re].TabIndex;
            this.Controls.Remove(texts[re]); texts.RemoveAt(re); Update();
            texts.Insert(re, someControl);
            someControl.Location = pt;
            someControl.Size = sz;
            someControl.TabIndex = tabIndex;
            someControl.Name = tpNew.Name + typeNew;
            someControl.Anchor = ((((AnchorStyles.Top | AnchorStyles.Left) | AnchorStyles.Right)));
            someControl.Visible = true;
            if (someControl.GetType() == typeof(TextBox))
            {
                (someControl as TextBox).ReadOnly = true;
                this.Controls.Add(someControl as TextBox);
            }
            if (someControl.GetType() == typeof(ComboBox))
            {
                (someControl as ComboBox).DropDownStyle = ComboBoxStyle.DropDownList;
                this.Controls.Add(someControl as ComboBox);
            }
            Update();
            return re;
        }

        private void CancelButtuon_Click(object sender, EventArgs e)
        {
            if (isEditMode)
            {
                DelButton.Visible = true;
                EditButton.Text = "Редактировать";
                CancelButtuon.Text = "Закрыть";
                isEditMode = false;
            }
            else
            {
                this.DialogResult = DialogResult.Cancel;
                this.Close();
            }
        }

        private void Exit(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Escape) CancelButtuon_Click(null, null);
        }


        private void DelButton_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Abort;
            this.Close();
        }

        private void ComboBox_SelectionChangeCommitted(object sender, EventArgs e)
        {
            int offi = 0;
            int emplo = 0;
            foreach (var we in texts)
            {
                if (we.Name.Contains("Office"))
                    break;
                offi++;
            }
            foreach (var we in texts)
            {
                if (we.Name.Contains("EmpFIO"))
                    break;
                emplo++;
            }
            (texts[offi] as ComboBox).Items.Clear();
            (texts[offi] as ComboBox).Items.AddRange(cv.GetAllOffice((sender as ComboBox).Text).ToArray());
            (texts[offi] as ComboBox).SelectedIndex = 0;

            (texts[emplo] as ComboBox).Items.Clear();
            (texts[emplo] as ComboBox).Items.AddRange(cv.GetAllEmploee((sender as ComboBox).Text, (texts[offi] as ComboBox).Text).ToArray());
            //(texts[emplo] as ComboBox).SelectedIndex = 0;

            //(texts[offi] as ComboBox).SelectedIndex = 0;
        }
        
    }
}
