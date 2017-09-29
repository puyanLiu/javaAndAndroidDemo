.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;
.super Ljava/lang/Object;
.source "CommonSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 388
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    iget-object v1, v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    iget-object v1, v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->a(Ljava/lang/String;)V

    .line 396
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    .line 398
    invoke-static {}, Lcom/alipay/android/phone/a/a/m;->a()Lcom/alipay/android/phone/a/a/m;

    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/alipay/android/phone/a/a/m;->b(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Lcom/alipay/android/phone/a/b/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Lcom/alipay/android/phone/a/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/a/b/a;->a(Z)V

    .line 401
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "showMainPage"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->clearData()V

    .line 405
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->f:Ljava/lang/String;

    goto :goto_0

    .line 409
    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/a/a/m;->a()Lcom/alipay/android/phone/a/a/m;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/a/a/m;->b(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Lcom/alipay/android/phone/a/b/a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 411
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Lcom/alipay/android/phone/a/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/a/b/a;->a()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Lcom/alipay/android/phone/a/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/a/b/a;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Lcom/alipay/android/phone/a/b/a;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/alipay/android/phone/a/b/a;->a(Z)V

    .line 415
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-static {v0, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;Z)V

    goto/16 :goto_0
.end method
