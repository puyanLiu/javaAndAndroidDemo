.class Lcom/alipay/android/phone/discovery/o2ohome/Loado2oBundle$1;
.super Ljava/lang/Object;
.source "Loado2oBundle.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/Loado2oBundle;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/Loado2oBundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/Loado2oBundle$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/Loado2oBundle;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    const-string/jumbo v1, "android-phone-wallet-o2o"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->loadBundle(Ljava/lang/String;)V

    .line 17
    return-void
.end method
