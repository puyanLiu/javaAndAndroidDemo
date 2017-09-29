.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;
.super Ljava/lang/Object;
.source "MorePageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 446
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    iget-object v1, v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;Z)V

    goto :goto_0
.end method
