.class Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl$1;
.super Ljava/lang/Object;
.source "UcServiceImpl.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Lcom/uc/webview/export/utility/SetupTask;)V
    .locals 2

    .prologue
    .line 77
    const-string/jumbo v0, "UCCore.init"

    const-string/jumbo v1, "WebView\u5185\u6838\u521d\u59cb\u5316\u5f02\u5e38 exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulauc/util/UCH5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceImpl$1;->onReceiveValue(Lcom/uc/webview/export/utility/SetupTask;)V

    return-void
.end method
