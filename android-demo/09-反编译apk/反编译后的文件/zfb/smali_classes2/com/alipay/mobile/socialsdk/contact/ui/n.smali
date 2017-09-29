.class final Lcom/alipay/mobile/socialsdk/contact/ui/n;
.super Ljava/lang/Object;
.source "ContactSelectPageActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/n;->c:Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/n;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/n;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/n;->c:Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/n;->c:Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/n;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/n;->b:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;->a(Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity_;Ljava/util/List;Landroid/view/View;)V

    .line 78
    :cond_0
    return-void
.end method
