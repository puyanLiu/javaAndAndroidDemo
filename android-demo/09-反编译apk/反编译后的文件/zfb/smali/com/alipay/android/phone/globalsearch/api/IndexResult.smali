.class public Lcom/alipay/android/phone/globalsearch/api/IndexResult;
.super Ljava/lang/Object;
.source "IndexResult.java"


# static fields
.field private static final ALLRESULT:Ljava/lang/String; = "all_result"

.field static final BASE_WEIGHT:I = 0x3e8

.field private static final DBNAME:Ljava/lang/String; = "db_name"

.field private static final DOCSFOUND:Ljava/lang/String; = "docs_found"

.field private static final DOCSRETURN:Ljava/lang/String; = "docs_return"

.field private static final FIELD_ID_ARR:Ljava/lang/String; = "field_id_arr"

.field private static final FIELD_LIST:Ljava/lang/String; = "field_list"

.field private static final KEYFIELD:Ljava/lang/String; = "key_field"

.field private static final PKEY_ARR:Ljava/lang/String; = "pkey_arr"

.field private static final TABLENAME:Ljava/lang/String; = "table_name"

.field private static final WEIGHT_ARR:Ljava/lang/String; = "weight_arr"


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;",
            ">;"
        }
    .end annotation
.end field

.field private dbName:Ljava/lang/String;

.field private docsFound:I

.field private docsReturned:I

.field private fieldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field filedNamelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keyField:Ljava/lang/String;

.field private rowIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rowIds:Ljava/lang/String;

.field private sortModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;",
            ">;"
        }
    .end annotation
.end field

.field private tableName:Ljava/lang/String;

.field private weightList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;IZ)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->keyField:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->rowIdList:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->fieldList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->weightList:Ljava/util/List;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->rowIds:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->sortModelList:Ljava/util/List;

    .line 44
    new-instance v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult$1;-><init>(Lcom/alipay/android/phone/globalsearch/api/IndexResult;)V

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->comparator:Ljava/util/Comparator;

    .line 64
    :try_start_0
    const-string/jumbo v0, "db_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string/jumbo v0, "db_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->dbName:Ljava/lang/String;

    .line 66
    :cond_0
    const-string/jumbo v0, "table_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const-string/jumbo v0, "table_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->tableName:Ljava/lang/String;

    .line 68
    :cond_1
    const-string/jumbo v0, "docs_found"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    const-string/jumbo v0, "docs_found"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->docsFound:I

    .line 70
    :cond_2
    const-string/jumbo v0, "docs_return"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    const-string/jumbo v0, "docs_return"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->docsReturned:I

    .line 72
    :cond_3
    const-string/jumbo v0, "key_field"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    const-string/jumbo v0, "key_field"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->keyField:Ljava/lang/String;

    .line 76
    :cond_4
    const-string/jumbo v0, "field_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    const-string/jumbo v0, "field_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->filedNamelist:Ljava/util/List;

    .line 83
    :cond_5
    const-string/jumbo v0, "pkey_arr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "field_id_arr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 84
    const-string/jumbo v0, "pkey_arr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 85
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->filedNamelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 86
    const-string/jumbo v0, "field_id_arr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 87
    const-string/jumbo v0, "weight_arr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 88
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v2, v1

    .line 91
    :goto_0
    if-lt v2, v7, :cond_8

    .line 111
    :cond_6
    if-eqz p3, :cond_7

    .line 113
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->sortModelList:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    :cond_7
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->sortModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    if-lez p2, :cond_e

    .line 120
    if-le v0, p2, :cond_b

    .line 126
    :goto_1
    if-lt v1, p2, :cond_c

    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->rowIds:Ljava/lang/String;

    .line 152
    :goto_2
    return-void

    .line 92
    :cond_8
    new-instance v8, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;-><init>(Lcom/alipay/android/phone/globalsearch/api/IndexResult;Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;)V

    .line 93
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->pkey:Ljava/lang/String;

    .line 94
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->weight:I

    .line 95
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->fieldId:I

    .line 96
    iget-object v0, v8, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->pkey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, v8, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->pkeyHash:I

    .line 97
    iget v0, v8, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->fieldId:I

    .line 98
    const/4 v9, 0x1

    if-ne v0, v9, :cond_9

    move v0, v1

    .line 101
    :cond_9
    iget v9, v8, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->weight:I

    sub-int v0, v4, v0

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v9

    iput v0, v8, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->id:I

    .line 106
    invoke-direct {p0, v8}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->hasSameModel(Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 107
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->sortModelList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_b
    move p2, v0

    .line 120
    goto :goto_1

    .line 127
    :cond_c
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->sortModelList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;

    .line 128
    iget-object v3, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->rowIdList:Ljava/util/List;

    iget-object v4, v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->pkey:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v3, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->weightList:Ljava/util/List;

    iget v4, v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->weight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v3, v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->pkey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    add-int/lit8 v3, p2, -0x1

    if-ge v1, v3, :cond_d

    .line 134
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_d
    iget-object v3, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->fieldList:Ljava/util/List;

    iget-object v4, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->filedNamelist:Ljava/util/List;

    iget v0, v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->fieldId:I

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 152
    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_e
    move p2, v0

    goto/16 :goto_1
.end method

.method private hasSameModel(Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;)Z
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->sortModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 155
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;

    .line 156
    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->pkey:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->pkey:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static parseResults(Ljava/lang/String;IZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-object v0

    .line 201
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 204
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    const-string/jumbo v4, "all_result"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 207
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 208
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v5, :cond_2

    .line 226
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 209
    :cond_2
    :try_start_1
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 210
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 211
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 213
    new-instance v7, Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-direct {v7, v6, p1, p2}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;-><init>(Lorg/json/JSONObject;IZ)V

    .line 214
    iget v6, v7, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->docsReturned:I

    if-lez v6, :cond_3

    .line 215
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    .line 220
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static parseResults(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->parseResults(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDbName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getDocsFound()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->docsFound:I

    return v0
.end method

.method public getDocsReturned()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->docsReturned:I

    return v0
.end method

.method public getFieldList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->fieldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->fieldList:Ljava/util/List;

    goto :goto_0
.end method

.method public getKeyField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->keyField:Ljava/lang/String;

    return-object v0
.end method

.method public getRowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->rowIds:Ljava/lang/String;

    return-object v0
.end method

.method public getRowIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->rowIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->rowIdList:Ljava/util/List;

    goto :goto_0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->sortModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWeightList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->weightList:Ljava/util/List;

    return-object v0
.end method

.method public recountPage(II)V
    .locals 6

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->sortModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->rowIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->fieldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    if-gez p1, :cond_3

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    if-le p2, v1, :cond_0

    move p2, v1

    :cond_0
    move v2, v0

    .line 176
    :goto_1
    if-lt v2, p2, :cond_1

    .line 191
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->rowIds:Ljava/lang/String;

    .line 192
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->sortModelList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;

    .line 178
    iget-object v4, v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->pkey:Ljava/lang/String;

    .line 179
    iget-object v5, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->rowIdList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    const-string/jumbo v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_2

    .line 184
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_2
    iget-object v4, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->fieldList:Ljava/util/List;

    iget-object v5, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->filedNamelist:Ljava/util/List;

    iget v0, v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->fieldId:I

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Result [dbName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tableName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", docsFound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->docsFound:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", docsReturned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->docsReturned:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rowIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->rowIdList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
