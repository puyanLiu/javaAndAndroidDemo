.class public final Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger_;
.super Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger_;Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/alipay/android/widget/security/msgreceiver/d;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/alipay/android/widget/security/msgreceiver/d;-><init>(Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger_;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method
