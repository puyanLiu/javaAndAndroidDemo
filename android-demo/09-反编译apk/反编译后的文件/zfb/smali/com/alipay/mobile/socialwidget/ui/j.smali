.class final Lcom/alipay/mobile/socialwidget/ui/j;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/i;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/j;->a:Lcom/alipay/mobile/socialwidget/ui/i;

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 626
    invoke-static {}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/j;->a:Lcom/alipay/mobile/socialwidget/ui/i;

    iget-object v0, v0, Lcom/alipay/mobile/socialwidget/ui/i;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->p(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 629
    :cond_0
    return-void
.end method
