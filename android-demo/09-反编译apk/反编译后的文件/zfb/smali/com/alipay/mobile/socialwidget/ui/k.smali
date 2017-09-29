.class final Lcom/alipay/mobile/socialwidget/ui/k;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/k;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 704
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/k;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->q(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/k;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->q(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/k;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v1}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->r(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/k;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialwidget/ui/TimelineTableView;->a(Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;)V

    .line 707
    :cond_0
    return-void
.end method
