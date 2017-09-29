.class public final Lcom/google/zxing/client/result/VINResultParser;
.super Lcom/google/zxing/client/result/ResultParser;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "[IOQ]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VINResultParser;->a:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "[A-Z0-9]{17}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VINResultParser;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VINResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/VINParsedResult;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/VINParsedResult;
    .locals 12

    const/4 v10, 0x0

    const/16 v11, 0x52

    const/16 v4, 0xa

    const/4 v2, 0x0

    const/16 v9, 0x41

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-eq v0, v1, :cond_0

    move-object v0, v10

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/client/result/VINResultParser;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/google/zxing/client/result/VINResultParser;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v10

    goto :goto_0

    :cond_1
    move v5, v2

    move v6, v2

    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v5, v0, :cond_a

    add-int/lit8 v0, v5, 0x1

    if-lez v0, :cond_2

    const/4 v3, 0x7

    if-gt v0, v3, :cond_2

    rsub-int/lit8 v0, v0, 0x9

    move v3, v0

    :goto_2
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v9, :cond_6

    const/16 v7, 0x49

    if-gt v0, v7, :cond_6

    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0x1

    :goto_3
    mul-int/2addr v0, v3

    add-int v3, v6, v0

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v6, v3

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    if-lt v0, v4, :cond_5

    const/16 v3, 0x11

    if-gt v0, v3, :cond_5

    rsub-int/lit8 v0, v0, 0x13

    move v3, v0

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    move-object v0, v10

    goto :goto_0

    :cond_6
    const/16 v7, 0x4a

    if-lt v0, v7, :cond_7

    if-gt v0, v11, :cond_7

    add-int/lit8 v0, v0, -0x4a

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const/16 v7, 0x53

    if-lt v0, v7, :cond_8

    const/16 v7, 0x5a

    if-gt v0, v7, :cond_8

    add-int/lit8 v0, v0, -0x53

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_8
    const/16 v7, 0x30

    if-lt v0, v7, :cond_9

    const/16 v7, 0x39

    if-gt v0, v7, :cond_9

    add-int/lit8 v0, v0, -0x30

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_a
    const/16 v0, 0x8

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    rem-int/lit8 v0, v6, 0xb

    if-ge v0, v4, :cond_b

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    :goto_4
    if-ne v3, v0, :cond_d

    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_e

    move-object v0, v10

    goto/16 :goto_0

    :cond_b
    if-ne v0, v4, :cond_c

    const/16 v0, 0x58

    goto :goto_4

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_d
    move v0, v2

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/google/zxing/client/result/VINParsedResult;

    const/4 v3, 0x3

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    const/16 v5, 0x11

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    sparse-switch v5, :sswitch_data_0

    :cond_f
    move-object v5, v10

    :goto_6
    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x9

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x45

    if-lt v7, v8, :cond_15

    const/16 v8, 0x48

    if-gt v7, v8, :cond_15

    add-int/lit8 v7, v7, -0x45

    add-int/lit16 v7, v7, 0x7c0

    :goto_7
    const/16 v8, 0xa

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/client/result/VINParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v5, "US"

    goto :goto_6

    :sswitch_1
    const-string/jumbo v5, "CA"

    goto :goto_6

    :sswitch_2
    if-lt v6, v9, :cond_f

    const/16 v5, 0x57

    if-gt v6, v5, :cond_f

    const-string/jumbo v5, "MX"

    goto :goto_6

    :sswitch_3
    if-lt v6, v9, :cond_10

    const/16 v5, 0x45

    if-le v6, v5, :cond_11

    :cond_10
    const/16 v5, 0x33

    if-lt v6, v5, :cond_f

    const/16 v5, 0x39

    if-gt v6, v5, :cond_f

    :cond_11
    const-string/jumbo v5, "BR"

    goto :goto_6

    :sswitch_4
    if-lt v6, v9, :cond_f

    const/16 v5, 0x54

    if-gt v6, v5, :cond_f

    const-string/jumbo v5, "JP"

    goto :goto_6

    :sswitch_5
    const/16 v5, 0x4c

    if-lt v6, v5, :cond_f

    if-gt v6, v11, :cond_f

    const-string/jumbo v5, "KO"

    goto :goto_6

    :sswitch_6
    const-string/jumbo v5, "CN"

    goto :goto_6

    :sswitch_7
    if-lt v6, v9, :cond_f

    const/16 v5, 0x45

    if-gt v6, v5, :cond_f

    const-string/jumbo v5, "IN"

    goto :goto_6

    :sswitch_8
    if-lt v6, v9, :cond_12

    const/16 v5, 0x4d

    if-gt v6, v5, :cond_12

    const-string/jumbo v5, "UK"

    goto :goto_6

    :cond_12
    const/16 v5, 0x4e

    if-lt v6, v5, :cond_f

    const/16 v5, 0x54

    if-gt v6, v5, :cond_f

    const-string/jumbo v5, "DE"

    goto/16 :goto_6

    :sswitch_9
    const/16 v5, 0x46

    if-lt v6, v5, :cond_13

    if-gt v6, v11, :cond_13

    const-string/jumbo v5, "FR"

    goto/16 :goto_6

    :cond_13
    const/16 v5, 0x53

    if-lt v6, v5, :cond_f

    const/16 v5, 0x57

    if-gt v6, v5, :cond_f

    const-string/jumbo v5, "ES"

    goto/16 :goto_6

    :sswitch_a
    const-string/jumbo v5, "DE"

    goto/16 :goto_6

    :sswitch_b
    const/16 v5, 0x30

    if-eq v6, v5, :cond_14

    const/16 v5, 0x33

    if-lt v6, v5, :cond_f

    const/16 v5, 0x39

    if-gt v6, v5, :cond_f

    :cond_14
    const-string/jumbo v5, "RU"

    goto/16 :goto_6

    :sswitch_c
    if-lt v6, v9, :cond_f

    if-gt v6, v11, :cond_f

    const-string/jumbo v5, "IT"

    goto/16 :goto_6

    :cond_15
    const/16 v8, 0x4a

    if-lt v7, v8, :cond_16

    const/16 v8, 0x4e

    if-gt v7, v8, :cond_16

    add-int/lit8 v7, v7, -0x4a

    add-int/lit16 v7, v7, 0x7c4

    goto/16 :goto_7

    :cond_16
    const/16 v8, 0x50

    if-ne v7, v8, :cond_17

    const/16 v7, 0x7c9

    goto/16 :goto_7

    :cond_17
    if-lt v7, v11, :cond_18

    const/16 v8, 0x54

    if-gt v7, v8, :cond_18

    add-int/lit8 v7, v7, -0x52

    add-int/lit16 v7, v7, 0x7ca

    goto/16 :goto_7

    :cond_18
    const/16 v8, 0x56

    if-lt v7, v8, :cond_19

    const/16 v8, 0x59

    if-gt v7, v8, :cond_19

    add-int/lit8 v7, v7, -0x56

    add-int/lit16 v7, v7, 0x7cd

    goto/16 :goto_7

    :cond_19
    const/16 v8, 0x31

    if-lt v7, v8, :cond_1a

    const/16 v8, 0x39

    if-gt v7, v8, :cond_1a

    add-int/lit8 v7, v7, -0x31

    add-int/lit16 v7, v7, 0x7d1

    goto/16 :goto_7

    :cond_1a
    if-lt v7, v9, :cond_1b

    const/16 v8, 0x44

    if-gt v7, v8, :cond_1b

    add-int/lit8 v7, v7, -0x41

    add-int/lit16 v7, v7, 0x7da

    goto/16 :goto_7

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_0
        0x32 -> :sswitch_1
        0x33 -> :sswitch_2
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x39 -> :sswitch_3
        0x4a -> :sswitch_4
        0x4b -> :sswitch_5
        0x4c -> :sswitch_6
        0x4d -> :sswitch_7
        0x53 -> :sswitch_8
        0x56 -> :sswitch_9
        0x57 -> :sswitch_a
        0x58 -> :sswitch_b
        0x5a -> :sswitch_c
    .end sparse-switch
.end method
