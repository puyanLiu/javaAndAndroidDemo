.class final Lcom/alipay/mobile/socialsdk/contact/fragment/ba;
.super Ljava/lang/Object;
.source "InputContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ba;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/fragment/ba;)Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ba;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ba;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ba;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 100
    new-instance v0, Lcom/alipay/android/phone/scancode/export/ScanRequest;

    invoke-direct {v0}, Lcom/alipay/android/phone/scancode/export/ScanRequest;-><init>()V

    .line 102
    sget-object v1, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;->QRCODE:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    .line 101
    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/scancode/export/ScanRequest;->setScanType(Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;)Lcom/alipay/android/phone/scancode/export/ScanRequest;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "20000166"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/scancode/export/ScanRequest;->setSourceId(Ljava/lang/String;)Lcom/alipay/android/phone/scancode/export/ScanRequest;

    move-result-object v0

    .line 104
    const-string/jumbo v1, "ACCOUNT"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/scancode/export/ScanRequest;->setDataType(Ljava/lang/String;)Lcom/alipay/android/phone/scancode/export/ScanRequest;

    move-result-object v0

    .line 105
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/scancode/export/ScanRequest;->setCallBackUrl(Ljava/lang/String;)Lcom/alipay/android/phone/scancode/export/ScanRequest;

    move-result-object v1

    .line 106
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 108
    const-class v2, Lcom/alipay/android/phone/scancode/export/ScanService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/scancode/export/ScanService;

    .line 106
    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/fragment/bb;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/bb;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ba;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/scancode/export/ScanService;->scan(Lcom/alipay/android/phone/scancode/export/ScanRequest;Lcom/alipay/android/phone/scancode/export/ScanCallback;)V

    .line 143
    return-void
.end method
