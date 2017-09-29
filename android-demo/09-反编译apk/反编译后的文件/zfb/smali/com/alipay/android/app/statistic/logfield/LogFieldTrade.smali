.class public Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;
.super Lcom/alipay/android/app/statistic/logfield/LogField;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, "trade"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/statistic/logfield/LogField;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;->i:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    :goto_0
    return-object v0

    .line 80
    :cond_0
    const-string/jumbo v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 81
    if-eqz v5, :cond_4

    .line 82
    array-length v6, v5

    move v3, v4

    move-object v1, v0

    move-object v2, v0

    :goto_1
    if-ge v3, v6, :cond_5

    aget-object v7, v5, v3

    .line 83
    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 84
    if-eqz v7, :cond_1

    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 85
    aget-object v8, v7, v4

    const-string/jumbo v9, "partner"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 86
    aget-object v2, v7, v10

    const-string/jumbo v7, "\""

    const-string/jumbo v8, ""

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 82
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 87
    :cond_2
    aget-object v8, v7, v4

    const-string/jumbo v9, "out_trade_no"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 89
    aget-object v1, v7, v10

    const-string/jumbo v7, "\""

    const-string/jumbo v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 90
    :cond_3
    aget-object v8, v7, v4

    const-string/jumbo v9, "trade_no"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 91
    aget-object v0, v7, v10

    const-string/jumbo v7, "\""

    const-string/jumbo v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v1, v0

    move-object v2, v0

    .line 97
    :cond_5
    new-instance v3, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;

    invoke-direct {v3}, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;-><init>()V

    .line 98
    iput-object v2, v3, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;->h:Ljava/lang/String;

    .line 99
    iput-object v1, v3, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;->f:Ljava/lang/String;

    .line 100
    iput-object v0, v3, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;->e:Ljava/lang/String;

    move-object v0, v3

    .line 101
    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;->i:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;->i:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 68
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldTrade;->j:Ljava/lang/String;

    .line 69
    return-void
.end method
