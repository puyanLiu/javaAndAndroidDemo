.class public Lcom/alipay/android/app/statistic/logfield/LogFieldTime;
.super Lcom/alipay/android/app/statistic/logfield/LogField;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "time"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/statistic/logfield/LogField;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "time"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/statistic/logfield/LogField;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldTime;->e:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldTime;->f:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldTime;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/android/app/statistic/logfield/LogFieldTime;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldTime;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
