.class public Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/notification/DataContentObserver;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 1

    .prologue
    .line 841
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;->b:I

    .line 843
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;)I
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;->b:I

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;)Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    return-object v0
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;ZLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->e(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    .line 848
    invoke-static {}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/socialwidget/ui/l;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialwidget/ui/l;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 861
    return-void
.end method
