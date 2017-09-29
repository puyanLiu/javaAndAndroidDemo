.class final Lcom/alipay/mobile/socialwidget/ui/g;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/g;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/g;)Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/g;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 584
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/h;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/h;-><init>(Lcom/alipay/mobile/socialwidget/ui/g;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 602
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/g;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->p(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 603
    return-void
.end method
