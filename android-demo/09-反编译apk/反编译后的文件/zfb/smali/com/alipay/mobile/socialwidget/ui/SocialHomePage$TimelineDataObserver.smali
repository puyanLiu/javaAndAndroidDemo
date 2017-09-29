.class public Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$TimelineDataObserver;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/notification/DataContentObserver;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 0

    .prologue
    .line 864
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$TimelineDataObserver;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$TimelineDataObserver;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->g(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    .line 868
    return-void
.end method
