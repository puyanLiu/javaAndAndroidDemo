.class public Lcom/alipay/android/app/statistic/logfield/LogFieldResult;
.super Lcom/alipay/android/app/statistic/logfield/LogField;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "result"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/statistic/logfield/LogField;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldResult;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldResult;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldResult;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldResult;->e:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldResult;->f:Ljava/lang/String;

    .line 39
    return-void
.end method
