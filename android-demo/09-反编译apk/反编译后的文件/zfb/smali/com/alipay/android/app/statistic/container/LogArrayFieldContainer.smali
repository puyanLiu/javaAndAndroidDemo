.class public Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;
.super Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;


# instance fields
.field protected d:Ljava/lang/String;

.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/statistic/logfield/LogField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/alipay/android/app/statistic/container/AbstractLogFieldContainer;-><init>(I)V

    .line 13
    sget-object v0, Lcom/alipay/android/app/statistic/constants/StatisticConstants;->f:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;->d:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/statistic/logfield/LogField;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;->e:Ljava/util/List;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 6

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 24
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;->a()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;->e:Ljava/util/List;

    new-instance v1, Lcom/alipay/android/app/statistic/container/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/statistic/container/a;-><init>(Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    sget-object v0, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_3

    .line 36
    iget-object v0, p0, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/statistic/logfield/LogField;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/logfield/LogField;->a()Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string/jumbo v3, ","

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "-"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v0, p0, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/statistic/logfield/LogField;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/logfield/LogField;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    sget-object v0, Lcom/alipay/android/app/statistic/container/LogArrayFieldContainer;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
