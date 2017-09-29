.class public abstract Lcom/alipay/android/app/statistic/logfield/LogField;
.super Ljava/lang/Object;


# instance fields
.field protected a:Z

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v1, p0, Lcom/alipay/android/app/statistic/logfield/LogField;->a:Z

    .line 14
    sget-object v0, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->g:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogField;->c:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogField;->d:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogField;->b:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->a:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->a:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->b:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->b:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->c:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->c:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->d:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->d:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->e:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->e:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->f:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->f:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->g:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->g:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->h:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->h:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogField;->d:Ljava/lang/String;

    :cond_0
    return-object p1
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method protected final varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    array-length v0, p1

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/statistic/logfield/LogField;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogField;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lcom/alipay/android/app/statistic/logfield/LogField;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/statistic/logfield/LogField;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alipay/android/app/statistic/logfield/LogField;->a:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogField;->b:Ljava/lang/String;

    return-object v0
.end method
