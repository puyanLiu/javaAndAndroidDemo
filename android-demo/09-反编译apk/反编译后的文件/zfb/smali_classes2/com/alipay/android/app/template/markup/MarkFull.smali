.class public Lcom/alipay/android/app/template/markup/MarkFull;
.super Ljava/lang/Object;
.source "MarkFull.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "(\\{\\{(.+?)\\}\\})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/template/markup/MarkFull;->a:Ljava/util/regex/Pattern;

    .line 57
    const-string/jumbo v0, "`(.+?)`"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/template/markup/MarkFull;->b:Ljava/util/regex/Pattern;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    array-length v0, p2

    if-lez v0, :cond_0

    .line 218
    aget-object v0, p2, v2

    .line 219
    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 220
    aget-object v1, v0, v2

    .line 221
    array-length v2, v0

    invoke-static {v0, v3, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    .line 222
    invoke-static {p1, v1, v0}, Lcom/alipay/android/app/template/markup/Pipes;->pipe(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 223
    array-length v0, p2

    invoke-static {p2, v3, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 224
    array-length v1, v0

    if-lez v1, :cond_0

    .line 225
    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/template/markup/MarkFull;->a(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 228
    :cond_0
    return-object p1
.end method

.method private a(Ljava/lang/Object;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 259
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/markup/MarkFull;->a(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 261
    const/4 v2, -0x1

    .line 262
    instance-of v3, v1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v3, :cond_2

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    check-cast v1, Lcom/alibaba/fastjson/JSONArray;

    .line 265
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    .line 266
    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-lt v5, v6, :cond_0

    .line 280
    :goto_1
    return-object v3

    .line 268
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/StringBuilder;

    move-object v2, v0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 269
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 268
    invoke-virtual {p0, p3, v4}, Lcom/alipay/android/app/template/markup/MarkFull;->up(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v2, v5

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_2

    :catch_0
    move-exception v2

    move v2, v5

    goto :goto_0

    .line 277
    :cond_2
    instance-of v2, v1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_3

    .line 278
    invoke-virtual {p0, p3, v1}, Lcom/alipay/android/app/template/markup/MarkFull;->up(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 179
    sget-object v0, Lcom/alipay/android/app/template/markup/MarkFull;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 180
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    return-object p1

    .line 181
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "{{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/alipay/android/app/template/markup/MarkFull;->up(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\\{\\{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "([^/}]+\\w*)?\\}\\}|\\{\\{/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\\}\\}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 234
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 235
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 236
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    const/4 v0, -0x1

    move v1, v0

    move v2, v3

    move v4, v3

    move v5, v3

    move v0, v3

    .line 249
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lt v5, v7, :cond_2

    move v5, v0

    .line 252
    :cond_0
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 253
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v3, v2, v0

    .line 254
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 255
    new-instance v4, Lcom/alipay/android/app/template/markup/MarkEntry;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lcom/alipay/android/app/template/markup/MarkEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 237
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_2
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 243
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v7, "{{/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 244
    add-int/lit8 v0, v2, 0x1

    move v2, v4

    .line 248
    :goto_2
    if-eq v2, v0, :cond_0

    .line 249
    add-int/lit8 v4, v5, 0x1

    move v8, v0

    move v0, v5

    move v5, v4

    move v4, v2

    move v2, v8

    goto :goto_1

    .line 246
    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v0, v2

    move v2, v4

    goto :goto_2
.end method


# virtual methods
.method public up(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 74
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 76
    sget-object v1, Lcom/alipay/android/app/template/markup/MarkFull;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 77
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    :cond_0
    return-object p1

    .line 78
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_2
    const/4 v1, 0x0

    move v3, v1

    .line 85
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 86
    const-string/jumbo v8, ""

    .line 87
    const-string/jumbo v7, ""

    .line 88
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    move-object/from16 v0, p2

    invoke-direct {p0, v2, v0}, Lcom/alipay/android/app/template/markup/MarkFull;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 91
    add-int/lit8 v6, v3, 0x1

    .line 92
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "if"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    .line 93
    const-string/jumbo v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 94
    const/4 v2, 0x0

    aget-object v2, v4, v2

    .line 95
    const-string/jumbo v3, "^\\s*if"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 96
    if-eqz v11, :cond_5

    const-string/jumbo v2, "if"

    move-object v3, v2

    .line 97
    :goto_2
    const/4 v2, 0x1

    array-length v5, v4

    invoke-static {v4, v2, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 98
    if-eqz v11, :cond_16

    array-length v4, v2

    if-nez v4, :cond_16

    .line 99
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "notempty"

    aput-object v5, v2, v4

    move-object v4, v2

    .line 101
    :goto_3
    const/4 v5, 0x0

    .line 102
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_6

    .line 104
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    move-object v2, v0

    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    move-object v5, v2

    .line 117
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "{{/"

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_15

    .line 118
    invoke-static {p1, v3}, Lcom/alipay/android/app/template/markup/MarkFull;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 119
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 121
    sget-object v3, Lcom/alipay/android/app/template/markup/MarkFull;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    move v3, v6

    .line 122
    :goto_5
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_7

    .line 126
    add-int/lit8 v3, v3, -0x1

    move-object v6, v1

    move-object v7, v2

    .line 129
    :goto_6
    const-string/jumbo v1, "\\{\\{\\s*else\\s*\\}\\}"

    invoke-virtual {v6, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 130
    const-string/jumbo v1, "."

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 135
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/template/markup/MarkFull;->a(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 164
    :goto_7
    if-eqz v11, :cond_4

    .line 165
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v0, p2

    invoke-virtual {p0, v7, v0}, Lcom/alipay/android/app/template/markup/MarkFull;->up(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "\\{\\{\\s*else\\s*\\}\\}"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    aget-object v1, v2, v1

    .line 167
    :cond_4
    :goto_8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 96
    :cond_5
    const-string/jumbo v2, "\\|"

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v3, v2

    goto/16 :goto_2

    .line 112
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "the context should be of type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    const-class v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 124
    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    goto :goto_5

    .line 136
    :cond_8
    const/16 v1, 0x2e

    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_d

    .line 138
    const-string/jumbo v1, "\\."

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 139
    const/4 v1, 0x0

    move v5, v1

    move-object/from16 v2, p2

    .line 142
    :cond_9
    :goto_9
    if-eqz v2, :cond_a

    :try_start_1
    array-length v1, v12
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-lt v5, v1, :cond_b

    .line 155
    :cond_a
    :goto_a
    invoke-direct {p0, v2, v4, v7}, Lcom/alipay/android/app/template/markup/MarkFull;->a(Ljava/lang/Object;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_7

    .line 143
    :cond_b
    :try_start_2
    instance-of v1, v2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_c

    .line 144
    move-object v0, v2

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    move-object v1, v0

    add-int/lit8 v8, v5, 0x1

    aget-object v5, v12, v5

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move v5, v8

    goto :goto_9

    .line 145
    :cond_c
    instance-of v1, v2, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_9

    .line 146
    move-object v0, v2

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    move-object v1, v0

    add-int/lit8 v8, v5, 0x1

    aget-object v5, v12, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    move v5, v8

    goto :goto_9

    .line 156
    :cond_d
    if-eqz v11, :cond_e

    .line 157
    invoke-direct {p0, v5, v4}, Lcom/alipay/android/app/template/markup/MarkFull;->a(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_7

    .line 158
    :cond_e
    instance-of v1, v5, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_f

    .line 160
    invoke-direct {p0, v5, v4, v7}, Lcom/alipay/android/app/template/markup/MarkFull;->a(Ljava/lang/Object;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_7

    .line 161
    :cond_f
    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_14

    move-object/from16 v1, p2

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 162
    invoke-direct {p0, v5, v4}, Lcom/alipay/android/app/template/markup/MarkFull;->a(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    .line 165
    :cond_10
    const/4 v1, 0x1

    aget-object v1, v2, v1

    goto/16 :goto_8

    :cond_11
    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    aget-object v1, v2, v1

    goto/16 :goto_8

    :cond_12
    const-string/jumbo v1, ""

    goto/16 :goto_8

    :cond_13
    const-string/jumbo v1, ""

    goto/16 :goto_8

    :catch_0
    move-exception v1

    goto :goto_a

    .line 105
    :catch_1
    move-exception v2

    goto/16 :goto_4

    :cond_14
    move-object v1, v8

    goto/16 :goto_7

    :cond_15
    move v3, v6

    move-object v6, v1

    goto/16 :goto_6

    :cond_16
    move-object v4, v2

    goto/16 :goto_3
.end method
