.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "BiliDanmukuParser.java"


# static fields
.field private static final TRUE_STRING:Ljava/lang/String; = "true"


# instance fields
.field public completed:Z

.field public index:I

.field public item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

.field public result:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

.field final synthetic this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->result:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    .line 79
    iput-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 81
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->completed:Z

    .line 83
    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->index:I

    return-void
.end method

.method private decodeXmlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    const-string/jumbo v0, "&amp;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const-string/jumbo v0, "&amp;"

    const-string/jumbo v1, "&"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 248
    :cond_0
    const-string/jumbo v0, "&quot;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const-string/jumbo v0, "&quot;"

    const-string/jumbo v1, "\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 251
    :cond_1
    const-string/jumbo v0, "&gt;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    const-string/jumbo v0, "&gt;"

    const-string/jumbo v1, ">"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 254
    :cond_2
    const-string/jumbo v0, "&lt;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    const-string/jumbo v0, "&lt;"

    const-string/jumbo v1, "<"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 257
    :cond_3
    return-object p1
.end method


# virtual methods
.method public characters([CII)V
    .locals 22

    .prologue
    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    if-eqz v3, :cond_1

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v4, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->decodeXmlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->fillText(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->index:I

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->index:I

    iput v4, v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->index:I

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    iget-object v3, v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    invoke-virtual {v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    const/4 v4, 0x0

    .line 161
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v4, v3, [Ljava/lang/String;

    .line 163
    const/4 v3, 0x0

    :goto_0
    array-length v6, v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v3, v6, :cond_2

    move-object/from16 v18, v4

    .line 170
    :goto_1
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    array-length v3, v0

    const/4 v4, 0x5

    if-ge v3, v4, :cond_3

    .line 171
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 242
    :cond_1
    :goto_2
    return-void

    .line 164
    :cond_2
    :try_start_1
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    move-object/from16 v18, v4

    goto :goto_1

    .line 174
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    const/4 v4, 0x4

    aget-object v4, v18, v4

    iput-object v4, v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->text:Ljava/lang/String;

    .line 175
    const/4 v3, 0x0

    aget-object v3, v18, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 176
    const/4 v3, 0x1

    aget-object v3, v18, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 179
    const/4 v3, 0x2

    aget-object v3, v18, v3

    const-string/jumbo v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 180
    sget v6, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlphaValue;->MAX:I

    int-to-float v6, v6

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v15, v6

    .line 182
    array-length v6, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_a

    .line 183
    sget v6, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/AlphaValue;->MAX:I

    int-to-float v6, v6

    const/4 v7, 0x1

    aget-object v3, v3, v7

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    move v14, v3

    .line 185
    :goto_3
    const/4 v3, 0x3

    aget-object v3, v18, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v6

    float-to-long v0, v3

    move-wide/from16 v16, v0

    .line 187
    const-wide/16 v10, 0x0

    .line 188
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 189
    move-object/from16 v0, v18

    array-length v7, v0

    const/4 v8, 0x7

    if-lt v7, v8, :cond_9

    .line 190
    const/4 v3, 0x5

    aget-object v3, v18, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 191
    const/4 v6, 0x6

    aget-object v6, v18, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    move v12, v6

    .line 193
    :goto_4
    move-object/from16 v0, v18

    array-length v6, v0

    const/16 v7, 0xb

    if-lt v6, v7, :cond_8

    .line 194
    const/4 v6, 0x7

    aget-object v6, v18, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 195
    const/16 v6, 0x8

    aget-object v6, v18, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 196
    const-string/jumbo v6, ""

    const/16 v7, 0x9

    aget-object v7, v18, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 197
    const/16 v6, 0x9

    aget-object v6, v18, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    .line 199
    :goto_5
    const-string/jumbo v13, ""

    const/16 v19, 0xa

    aget-object v19, v18, v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 200
    const/16 v10, 0xa

    aget-object v10, v18, v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    float-to-long v10, v10

    move-wide/from16 v20, v6

    move v7, v8

    move v6, v9

    move-wide/from16 v8, v20

    .line 203
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    new-instance v19, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;-><init>(J)V

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    .line 204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    iput v3, v13, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->rotationZ:F

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    iput v12, v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->rotationY:F

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;

    invoke-static {v12}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->access$4(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;

    invoke-static {v13}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->access$5(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;)F

    move-result v13

    .line 206
    invoke-static/range {v3 .. v13}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->fillTranslationData(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;FFFFJJFF)V

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-wide/from16 v0, v16

    invoke-static {v3, v15, v14, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->fillAlphaData(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;IIJ)V

    .line 210
    move-object/from16 v0, v18

    array-length v3, v0

    const/16 v4, 0xc

    if-lt v3, v4, :cond_4

    .line 212
    const/16 v3, 0xb

    aget-object v3, v18, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "true"

    const/16 v4, 0xb

    aget-object v4, v18, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    const/4 v4, 0x0

    iput v4, v3, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textShadowColor:I

    .line 216
    :cond_4
    move-object/from16 v0, v18

    array-length v3, v0

    const/16 v4, 0xf

    if-lt v3, v4, :cond_1

    .line 224
    const-string/jumbo v3, ""

    const/16 v4, 0xe

    aget-object v4, v18, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 225
    const/16 v3, 0xe

    aget-object v3, v18, v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 226
    const-string/jumbo v4, "L"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 227
    if-eqz v5, :cond_1

    array-length v3, v5

    if-lez v3, :cond_1

    .line 228
    array-length v3, v5

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    .line 229
    const/4 v4, 0x0

    :goto_7
    array-length v6, v5

    if-lt v4, v6, :cond_5

    .line 234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;

    invoke-static {v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->access$4(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;)F

    move-result v5

    .line 235
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;

    invoke-static {v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->access$5(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;)F

    move-result v6

    .line 234
    invoke-static {v4, v3, v5, v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->fillLinePathData(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;[[FFF)V

    goto/16 :goto_2

    .line 230
    :cond_5
    aget-object v6, v5, v4

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 231
    aget-object v7, v3, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v7, v8

    .line 232
    aget-object v7, v3, v4

    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v7, v8

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_6
    move-wide/from16 v20, v6

    move v7, v8

    move v6, v9

    move-wide/from16 v8, v20

    goto/16 :goto_6

    :cond_7
    move-wide/from16 v6, v16

    goto/16 :goto_5

    :cond_8
    move-wide/from16 v8, v16

    move v7, v5

    move v6, v4

    goto/16 :goto_6

    :cond_9
    move v12, v6

    goto/16 :goto_4

    :cond_a
    move v14, v15

    goto/16 :goto_3
.end method

.method public endDocument()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->completed:Z

    .line 97
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    :goto_0
    const-string/jumbo v0, "d"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->access$3(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->setTimer(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;)V

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->result:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;->addItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    .line 144
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 146
    :cond_1
    return-void

    :cond_2
    move-object p2, p3

    .line 138
    goto :goto_0
.end method

.method public getResult()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->result:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    return-object v0
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->result:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    .line 92
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7

    .prologue
    const/high16 v0, -0x1000000

    .line 102
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 104
    const-string/jumbo v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    const-string/jumbo v1, "p"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 117
    array-length v2, v1

    if-lez v2, :cond_1

    .line 118
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 119
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 120
    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 121
    const/4 v6, 0x3

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v1, v0

    .line 123
    iget-object v6, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;

    invoke-static {v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->access$1(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->createDanmaku(ILcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 124
    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    if-eqz v4, :cond_1

    .line 125
    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    iput-wide v2, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    .line 126
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->access$2(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;)F

    move-result v3

    const v4, 0x3f19999a    # 0.6f

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    iput v3, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textSize:F

    .line 127
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    iput v1, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textColor:I

    .line 128
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->item:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    if-gt v1, v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    iput v0, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->textShadowColor:I

    .line 132
    :cond_1
    return-void

    :cond_2
    move-object p2, p3

    .line 102
    goto :goto_0
.end method
