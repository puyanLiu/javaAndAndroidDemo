.class public Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/notification/DataContentObserver;


# instance fields
.field a:Z

.field final synthetic b:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Z)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;->b:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    iput-boolean p2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;->a:Z

    .line 824
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;)Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;->b:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    return-object v0
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;ZLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;->b:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->e(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    .line 829
    invoke-static {}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/socialwidget/ui/n;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialwidget/ui/n;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 835
    return-void
.end method
