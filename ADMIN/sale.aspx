<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Test.master" AutoEventWireup="true" CodeFile="sale.aspx.cs" Inherits="ADMIN_sale" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* ======================= Cards ====================== */
        .cardBox {
          position: relative;
          width: 100%;
          padding: 20px;
          display: grid;
          grid-template-columns: repeat(4, 1fr);
          grid-gap: 30px;
        }

        .cardBox .card {
          position: relative;
          background: var(--white);
          padding: 30px;
          border-radius: 20px;
          display: flex;
          justify-content: space-between;
          cursor: pointer;
          box-shadow: 0 7px 25px rgba(0, 0, 0, 0.08);
        }

        .cardBox .card .numbers {
          position: relative;
          font-weight: 500;
          font-size: 2.5rem;
          color: var(--blue);
        }

        .cardBox .card .cardName {
          color: var(--black2);
          font-size: 1.1rem;
          margin-top: 5px;
        }

        .cardBox .card .iconBx {
          font-size: 3.5rem;
          color: var(--black2);
        }

        .cardBox .card:hover {
          background: var(--blue);
        }
        .cardBox .card:hover .numbers,
        .cardBox .card:hover .cardName,
        .cardBox .card:hover .iconBx {
          color: var(--white);
        }

        /* Styles for the left-side bar chart */
        .left-side {
            float: left;
            width: 60%;
            padding: 20px;
        }

        .left-side .chart {
            width: 100%;
            height: 600px;
        }

          #chartContainer {
        width: 100%;
        height: 500px;
        background-color: #f5f5f5;
        border-radius: 8px;
        padding: 20px;
        box-sizing: border-box;
    }

    #chartContainer .chart {
        width: 100%;
        height: 100%;
    }

    /* Customize the appearance of the chart control */
    #chartContainer .chart .Chart1 {
        font-family: 'Arial', sans-serif;
    }

    /* Style the chart area */
    #chartContainer .chart .ChartArea1 {
        background-color: #ffffff;
    }

    /* Style the series */
    #chartContainer .chart .Series1 {
        color: #007bff;
        border-width: 2px;
        border-color: #007bff;
        border-radius: 4px;
        marker-size: 8px;
        marker-border-color: #007bff;
        marker-border-width: 2px;
        marker-color: #ffffff;
    }

    #chartContainer .chart .Chart1 {
        font-family: 'Arial', sans-serif;
        width: 100%; /* Adjust the width to make it wider */
        height: 100%;
    }

        /* Styles for the right-side table */
        .right-side {
            float: right;
            width: 40%;
            padding: 20px;
        }

        .right-side table {
            width: 80%;
            border-collapse: collapse;
        }

        .right-side th, .right-side td {
            padding: 8px 10px;
            border: 1px solid #ddd;
            borrder-radius: 0.5rem;
            text-align: left;
        }

        .right-side th {
            background-color: #f2f2f2;
        }
        /* ====================== Responsive Design ========================== */
        @media (max-width: 991px) {
          .chartsBx{
            grid-template-columns: 1fr;
            height: auto;
          }

          .navigation {
            left: -300px;
          }
          .navigation.active {
            width: 300px;
            left: 0;
          }
          .main {
            width: 100%;
            left: 0;
          }
          .main.active {
            left: 300px;
          }
          .cardBox {
            grid-template-columns: repeat(2, 1fr);
          }
        }

        @media (max-width: 768px) {
          .details {
            grid-template-columns: 1fr;
          }
          .recentOrders {
            overflow-x: auto;
          }
          .status.inProgress {
            white-space: nowrap;
          }
          #Chart1 {
            width: 100%;
            height: 300px;
           }
        }

        @media (max-width: 480px) {
          .cardBox {
            grid-template-columns: repeat(1, 1fr);
          }
          .cardHeader h2 {
            font-size: 20px;
          }
          .user {
            min-width: 40px;
          }
          .navigation {
            width: 100%;
            left: -100%;
            z-index: 1000;
          }
          .navigation.active {
            width: 100%;
            left: 0;
          }
          .toggle {
            z-index: 10001;
          }
          .main.active .toggle {
            color: #fff;
            position: fixed;
            right: 0;
            left: initial;
          }
          #Chart1 {
            height: 200px;
           }
        }
    </style>
    <!-- ======================= Cards ================== -->
    <div class="cardBox">
        <div class="card">
            <div>
                <div class="numbers">
                    <asp:Literal ID="DailyViewsLiteral" runat="server" Text=""></asp:Literal>
                </div>
                <div class="cardName">Daily Sales</div>
            </div>
            <div class="iconBx">
                <ion-icon name="calendar-outline"></ion-icon>
            </div>
        </div>
        <div class="card">
            <div>
                <div class="numbers">
                    <asp:Literal ID="SalesLiteral" runat="server" Text=""></asp:Literal>
                </div>
                <div class="cardName">Weekly Sales</div>
            </div>
            <div class="iconBx">
                 <ion-icon name="calendar-sharp"></ion-icon>
            </div>
        </div>
        <div class="card">
            <div>
                <div class="numbers">
                    <asp:Literal ID="CommentsLiteral" runat="server" Text=""></asp:Literal>
                </div>
                <div class="cardName">Monthly Sales</div>
            </div>
            <div class="iconBx">
                 <ion-icon name="calendar-number-outline"></ion-icon>
            </div>
        </div>
        <div class="card">
            <div>
                <div class="numbers">
                    <asp:Literal ID="EarningLiteral" runat="server" Text=""></asp:Literal>
                </div>
                <div class="cardName">Total Customer</div>
            </div>
            <div class="iconBx">
                <ion-icon name="people-outline"></ion-icon>
            </div>
        </div>
    </div>


    <div class="left-side">
        <h2>Sales By Bank</h2>
        <div id="chartContainer" class="chart">
            <asp:Chart ID="Chart1" runat="server" Style="width:80%; height: 400px; border-radius: 0.5rem; text-align: center; margin-top: 40px; margin-left: 50px;" AntiAliasing="Graphics">
                <Series>
                    <asp:Series Name="Series1" Palette="SemiTransparent" LegendText="Sales"></asp:Series>
                </Series>
                <Legends>
                    <asp:Legend Alignment="center" Docking="Bottom" IsTextAutoFit="false" Name="Default" LegendStyle="Row"></asp:Legend>
                </Legends>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1" BorderDashStyle="NotSet"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </div>
    </div>

    <div class="right-side">
        <h2>Payments Type</h2>
        <div id="chartContainer" class="chart">
            <asp:Chart ID="Chart2" runat="server" Style="width:80%; height: 400px; border-radius: 0.5rem; text-align: center; margin-top: 40px; margin-left: 50px;" AntiAliasing="Graphics">
                <Series>
                    <asp:Series Name="Series1"  Palette="SemiTransparent"></asp:Series>
                </Series>
                <Legends>
                    <asp:Legend Alignment="center" Docking="Bottom" IsTextAutoFit="false" Name="Default" LegendStyle="Row"></asp:Legend>
                </Legends>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>

        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString="Data Source=DESKTOP-RAA84UG\SQLEXPRESS;Initial Catalog=FOODSYSTEM;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [PaymentMst]"></asp:SqlDataSource>
     </div>
    </div>

</asp:Content>
