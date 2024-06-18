# Adv-DS-in-Finance-Insurance

## Final Project: Forecasting and Trading Crypto with Deep Neural Networks Summary

(See project report for more detail)

### Introduction
The project "Forecasting and Trading Crypto with Deep Neural Networks" focuses on leveraging advanced data science techniques to predict cryptocurrency prices and develop effective trading strategies. With the rise of big data, various sources such as social media and financial news significantly influence cryptocurrency markets. This project aims to create a deep neural network model that incorporates trading data, news, social media feeds, and technical indicators to forecast cryptocurrency returns. Additionally, it involves building a backtester on historical data to fine-tune and enhance profitability for a long-short equity strategy.

### Cryptocurrencies
The volatility of cryptocurrencies, particularly Bitcoin, is influenced by factors such as supply and demand, investor sentiment, government regulation, and public attention. The project aims to harness these factors, alongside technical and economic indicators, to predict price movements.

### Data Exploration
The project utilizes various data sources, including:
- Pricing/Volume Data: Sourced from YahooFinance, providing open, high, low, close, and volume data.
- Economic/Technical Indicators: Indicators like Simple Moving Average (SMA), Bollinger Bands, Relative Strength Index (RSI), and Force Index are used to forecast market direction.
- Alternative Data: Social media posts and news feeds, particularly from Twitter, are scraped and analyzed to capture public sentiment.

### Natural Language Processing (NLP)
To transform text data into a readable format for the model, the project employs a transformer model trained on sentiment140 from Kaggle. This model classifies tweets as positive, neutral, or negative, providing sentiment scores used in the prediction models.

### Predictive Modeling
Three models are developed and tested:
- Logistic Model: Serves as a baseline model with an accuracy of 52%.
- Multilayer Perceptron (MLP): Utilizes a neural network structure with three hidden layers but achieves an accuracy of 49%.
- Long Short-Term Memory (LSTM): Overcomes the limitations of traditional RNNs, achieving the highest accuracy of 56%.

### Backtest Strategy
Two trading strategies are formulated and compared:
- Max 10 Trading Strategy: Closes positions when they reach an absolute value of 10 coins. This strategy accumulates about 113% returns.
- Momentum Trading Strategy: Trades based on the trend of the past few days and predicted price direction, achieving around 20% returns.

### Strategy Performance
The project's backtesting reveals that both formulated trading strategies outperform the simple buy-and-hold strategy. The Max 10 strategy, in particular, shows significant profitability and better risk management compared to the Momentum strategy.

### Future Work
Future improvements include enhancing data quality, especially from alternative sources, and refining the model to reduce sensitivity to parameter changes and initial weight randomness. More stable models are also sought to improve prediction reliability and profitability.

### Conclusion
The project successfully demonstrates the application of deep neural networks in forecasting cryptocurrency prices and developing profitable trading strategies. By integrating multiple data sources and employing advanced modeling techniques, it provides a robust framework for predicting market trends and optimizing trading performance.
