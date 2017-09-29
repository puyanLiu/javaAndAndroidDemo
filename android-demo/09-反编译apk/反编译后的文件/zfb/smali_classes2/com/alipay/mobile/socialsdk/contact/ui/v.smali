.class final Lcom/alipay/mobile/socialsdk/contact/ui/v;
.super Ljava/lang/Object;
.source "PersonalProfileActivity.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/notification/DataContentObserver;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/v;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;ZLjava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 252
    if-eqz p3, :cond_0

    instance-of v0, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    if-eqz v0, :cond_2

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/v;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->loadFriendInfo()V

    .line 267
    :cond_1
    :goto_0
    return-void

    .line 254
    :cond_2
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 255
    const-string/jumbo v0, "deleteFriend"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/v;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->a(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/v;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->a(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    move-result-object v0

    iput v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->friendStatus:I

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/v;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->b(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/v;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->a(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->updataRecommendationFriend(Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;Z)V

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/v;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->finish()V

    goto :goto_0

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/v;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->loadFriendInfo()V

    goto :goto_0
.end method
