.class public abstract Lcom/alipay/android/app/statistic/record/LogRecord;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->a:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->b:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->e:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->c:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->d:Ljava/util/HashMap;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v2, v1, [Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;

    .line 68
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    iget-object v3, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :goto_1
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 72
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v3, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 75
    :cond_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v0, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(ILcom/alipay/android/app/statistic/logfield/LogField;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alipay/android/app/statistic/record/LogRecord;->a(IZLcom/alipay/android/app/statistic/logfield/LogField;)V

    .line 31
    return-void
.end method

.method protected final declared-synchronized a(IZLcom/alipay/android/app/statistic/logfield/LogField;)V
    .locals 3

    .prologue
    .line 35
    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Lcom/alipay/android/app/statistic/logfield/LogField;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 39
    :cond_1
    :try_start_1
    invoke-virtual {p3}, Lcom/alipay/android/app/statistic/logfield/LogField;->d()Ljava/lang/String;

    move-result-object v1

    .line 40
    const/4 v0, 0x0

    .line 41
    iget-object v2, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    iget-object v0, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;

    .line 45
    :cond_2
    invoke-virtual {p3}, Lcom/alipay/android/app/statistic/logfield/LogField;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 46
    if-nez v0, :cond_3

    .line 47
    new-instance v0, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;-><init>(I)V

    .line 50
    :cond_3
    if-nez p2, :cond_4

    .line 51
    invoke-virtual {v0, p3}, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V

    .line 57
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/alipay/android/app/statistic/record/LogRecord;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 54
    :cond_5
    :try_start_2
    new-instance v0, Lcom/alipay/android/app/statistic/container/LogFieldContainer;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/statistic/container/LogFieldContainer;-><init>(I)V

    .line 55
    invoke-virtual {v0, p3}, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;->a(Lcom/alipay/android/app/statistic/logfield/LogField;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
