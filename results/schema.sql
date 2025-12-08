CREATE TABLE IF NOT EXISTS notebook (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL UNIQUE,
  loss DECIMAL(20,15) NOT NULL,
  accuracy DECIMAL(20,15) NOT NULL,
  auc DECIMAL(20,15) NOT NULL,
  recall DECIMAL(20,15) NOT NULL,
  precision DECIMAL(20,15) NOT NULL,
  f1_score DECIMAL(20,15) NOT NULL,
  roc_auc DECIMAL(20,15) NOT NULL,
  specificity DECIMAL(20,15) NOT NULL,
  false_positives INTEGER NOT NULL,
  false_negatives INTEGER NOT NULL,
  true_negatives INTEGER NOT NULL,
  true_positives INTEGER NOT NULL
);