.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ab;
.super Ljava/lang/Object;
.source "MorePageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ab;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ab;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "message_box"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ab;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->l(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ab;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->g(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "message_box"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->searchLocal(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ab;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ab;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->g(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
