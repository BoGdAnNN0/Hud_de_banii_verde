---------------------------------------------------
---------       -- by AlphaMac --         ---------
---------------------------------------------------
local cfg = {}
--
-- start wallet/bank values
cfg.open_wallet = 5000000
cfg.open_bank = 10000000
cfg.open_diamante = 0
cfg.open_bitcoins = 0

cfg.display_css = [[
  .div_money{
		position: absolute;
		background-image: linear-gradient(to left, rgba(0, 255, 0), rgba(0, 100, 0));
		top: 37px;
		right: 10px;
		text-align:right;
		padding: 5px;
		color: white;
		width : 140px;
		border-left: 4px solid white;
		border-radius: 1px;
		font-family: 'Arial Black';
		font-size: 17px;
		font-weight: bold;
		color: #00FF00;
		text-shadow: rgb(0, 0, 0) 1px 0px 0px, rgb(0, 0, 0) 0.533333px 0.833333px 0px, rgb(0, 0, 0) -0.416667px 0.916667px 0px, rgb(0, 0, 0) -0.983333px 0.133333px 0px, rgb(0, 0, 0) -0.65px -0.75px 0px, rgb(0, 0, 0) 0.283333px -0.966667px 0px, rgb(0, 0, 0) 0.966667px -0.283333px 0px;
  }
  .div_bmoney{
		position: absolute;
		background-image: linear-gradient(to left, rgba(0, 255, 0), rgba(0, 100, 0));
		top: 76px;
		right: 10px;
		text-align:right;
		padding: 5px;
		color: white;
		width : 140px;
		border-left: 4px solid white;
		border-radius: 1px;
		font-family: 'Arial Black';
		font-size: 17px;
		font-weight: bold;
		color: #00FF00;
		text-shadow: rgb(0, 0, 0) 1px 0px 0px, rgb(0, 0, 0) 0.533333px 0.833333px 0px, rgb(0, 0, 0) -0.416667px 0.916667px 0px, rgb(0, 0, 0) -0.983333px 0.133333px 0px, rgb(0, 0, 0) -0.65px -0.75px 0px, rgb(0, 0, 0) 0.283333px -0.966667px 0px, rgb(0, 0, 0) 0.966667px -0.283333px 0px;
  }
  .div_dmoney{
		position: absolute;
		background-image: linear-gradient(to left, rgba(0, 255, 0), rgba(0, 100, 0));
		top: 115px;
		right: 10px;
		text-align:right;
		padding: 5px;
		color: white;
		width : 140px;
		border-left: 4px solid white;
		border-radius: 1px;
		font-family: 'Arial Black';
		font-size: 17px;
		font-weight: bold;
		color: #00FF00;
		text-shadow: rgb(0, 0, 0) 1px 0px 0px, rgb(0, 0, 0) 0.533333px 0.833333px 0px, rgb(0, 0, 0) -0.416667px 0.916667px 0px, rgb(0, 0, 0) -0.983333px 0.133333px 0px, rgb(0, 0, 0) -0.65px -0.75px 0px, rgb(0, 0, 0) 0.283333px -0.966667px 0px, rgb(0, 0, 0) 0.966667px -0.283333px 0px;
  }
   .div_bcmoney{
		position: absolute;
		background-image: linear-gradient(to left, rgba(0, 255, 0), rgba(0, 100, 0));
		top: 155px;
		right: 10px;
		text-align:right;
		padding: 5px;
		color: white;
		width : 140px;
		border-left: 4px solid white;
		border-radius: 1px;
		font-family: 'Arial Black';
		font-size: 17px;
		font-weight: bold;
		color: #00FF00;
		text-shadow: rgb(0, 0, 0) 1px 0px 0px, rgb(0, 0, 0) 0.533333px 0.833333px 0px, rgb(0, 0, 0) -0.416667px 0.916667px 0px, rgb(0, 0, 0) -0.983333px 0.133333px 0px, rgb(0, 0, 0) -0.65px -0.75px 0px, rgb(0, 0, 0) 0.283333px -0.966667px 0px, rgb(0, 0, 0) 0.966667px -0.283333px 0px;
  }
 .div_jobdisplay{
		position: absolute;
		background-image: linear-gradient(to left, rgba(0, 255, 0), rgba(0, 100, 0));
		top: 196px;
		right: 10px;
		text-align:right;
		padding: 5px;
		color: white;
		width : 140px;
		border-left: 4px solid white;
		border-radius: 1px;
		font-family: 'Arial Black';
		font-size: 17px;
		font-weight: bold;
		color: #00FF00;
		text-shadow: rgb(0, 0, 0) 1px 0px 0px, rgb(0, 0, 0) 0.533333px 0.833333px 0px, rgb(0, 0, 0) -0.416667px 0.916667px 0px, rgb(0, 0, 0) -0.983333px 0.133333px 0px, rgb(0, 0, 0) -0.65px -0.75px 0px, rgb(0, 0, 0) 0.283333px -0.966667px 0px, rgb(0, 0, 0) 0.966667px -0.283333px 0px;
  }
  .div_money .symbol{
        content: url('https://i.imgur.com/e1etipH.png');
        animation: logomove 2.1s infinite;
         float: left;
         margin-left: 5px;
      }
  .div_bmoney .symbol{
        content: url('https://i.imgur.com/yaugPPv.png');
        animation: logomove 2.1s infinite;
         float: left;
         margin-left: 5px;
      }

   .div_dmoney .symbol{
        content: url('https://cdn.discordapp.com/attachments/837319030678749214/837375587680256111/diamond.png');
        animation: logomove 2.1s infinite;
         float: left;
         margin-left: 5px;
      }

	   .div_bcmoney .symbol{
        content: url('https://cdn.discordapp.com/attachments/837319030678749214/837375579665334332/Bitcoin-BTC-icon.png');
        animation: logomove 2.1s infinite;
         float: left;
         margin-left: 5px;
		 }

		 .div_jobdisplay .symbol{
        content: url('https://cdn.discordapp.com/attachments/837651279818784779/837655019566268426/ezgif-2-4f289fbc19e4.png');
        animation: logomove 2.1s infinite;
         float: left;
         margin-left: 5px;
      }
  
  @keyframes logomove {
    0%{opacity: 0.5;}
    50%{opacity: 1;}
    100%{opacity: 0.5;}
}

  
]]

return cfg