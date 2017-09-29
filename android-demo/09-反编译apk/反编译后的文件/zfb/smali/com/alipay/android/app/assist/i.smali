.class final Lcom/alipay/android/app/assist/i;
.super Ljava/lang/Object;
.source "MspAssistUtil.java"

# interfaces
.implements Lcom/alipay/android/app/template/TemplatePasswordService;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final clear(I)V
    .locals 0

    .prologue
    .line 654
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->clear(I)V

    .line 655
    return-void
.end method

.method public final getText(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onTextChanged(ILjava/lang/String;III)V
    .locals 0

    .prologue
    .line 646
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->onTextChanged(ILjava/lang/String;III)V

    .line 647
    return-void
.end method
