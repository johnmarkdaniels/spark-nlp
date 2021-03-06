---
layout: model
title: Ner DL Model Clinical (Large)
author: John Snow Labs
name: ner_large_clinical
class: NerDLModel
language: en
repository: clinical/models
date: 2020-05-21
tags: [clinical,ner,en]
article_header:
   type: cover
use_language_switcher: "Python-Scala-Java"
---

{:.h2_title}
## Description
Named Entity recognition annotator allows for a generic model to be trained by utilizing a deep learning algorithm (Char CNNs - BiLSTM - CRF - word embeddings) inspired on a former state of the art model for NER: Chiu & Nicols, Named Entity Recognition with Bidirectional LSTM,CNN.

## Predicted Entities 
PROBLEM,TEST,TREATMENT

{:.btn-box}
[Live Demo](https://demo.johnsnowlabs.com/healthcare/NER_EVENTS_CLINICAL/){:.button.button-orange.button-orange-trans.co.button-icon}{:target="_blank"}
[Open in Colab](https://github.com/JohnSnowLabs/spark-nlp-workshop/blob/master/tutorials/Certification_Trainings/Healthcare/1.Clinical_Named_Entity_Recognition_Model.ipynb){:.button.button-orange.button-orange-trans.co.button-icon}{:target="_blank"}
[Download](https://s3.amazonaws.com/auxdata.johnsnowlabs.com/clinical/models/ner_large_clinical_en_2.5.0_2.4_1590021302624.zip){:.button.button-orange.button-orange-trans.arr.button-icon}

{:.h2_title}
## How to use 
<div class="tabs-box" markdown="1">

{% include programmingLanguageSelectScalaPython.html %}

```python
model = NerDLModel.pretrained("ner_large_clinical","en","clinical/models")\
	.setInputCols("sentence","token","word_embeddings")\
	.setOutputCol("ner")
```

```scala
val model = NerDLModel.pretrained("ner_large_clinical","en","clinical/models")
	.setInputCols("sentence","token","word_embeddings")
	.setOutputCol("ner")
```
</div>

{:.model-param}
## Model Information

{:.table-model}
|---------------|----------------------------------|
| Name:          | ner_large_clinical               |
| Type:   | NerDLModel                       |
| Compatibility: | Spark NLP 2.5.0+                           |
| License:       | Licensed                         |
| Edition:       | Official                       |
|Input labels:        | [sentence, token, word_embeddings] |
|Output labels:       | [ner]                              |
| Language:      | en                               |
| Dependencies: | embeddings_clinical              |

{:.h2_title}
## Data Source
Trained on data gathered and manually annotated by John Snow Labs
https://www.johnsnowlabs.com/data/