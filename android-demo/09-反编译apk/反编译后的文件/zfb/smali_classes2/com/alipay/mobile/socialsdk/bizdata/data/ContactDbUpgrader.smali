.class public Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDbUpgrader;
.super Ljava/lang/Object;
.source "ContactDbUpgrader.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/bizdata/db/DatabaseManuallyUpgrader;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "contact_db_version"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDbUpgrader;->a:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "package_is_grade"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDbUpgrader;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public upgradeDatabaseManually()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDbUpgrader;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 26
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDbUpgrader;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 27
    if-ne v0, v3, :cond_0

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDbUpgrader;->a:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putInt(Ljava/lang/String;I)V

    .line 29
    if-nez v1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDbUpgrader;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    const-string/jumbo v0, "-2"

    const-string/jumbo v1, "3"

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->composeId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->getRecentSessionBySessionId(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    move-result-object v2

    if-eqz v2, :cond_0

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->createOrUpdateRecentFriend(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    iget-object v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->deleteRecentSession(Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method
