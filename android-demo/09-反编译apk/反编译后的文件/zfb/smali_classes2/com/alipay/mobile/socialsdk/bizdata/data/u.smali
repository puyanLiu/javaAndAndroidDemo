.class final Lcom/alipay/mobile/socialsdk/bizdata/data/u;
.super Ljava/lang/Object;
.source "SocialQueryListener.java"

# interfaces
.implements Lcom/alipay/android/phone/globalsearch/api/ChatQueryer;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/u;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/bizdata/data/u;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/u;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->access$3(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u547d\u4e2d\u6d88\u606f\u5e93\u4e2a\u6570"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-virtual {v0, v2, v7}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->queryExistingAccounts(Ljava/util/List;Z)Ljava/util/HashMap;

    move-result-object v0

    move-object v6, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-virtual {v0, v3, v7}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->queryExistingGroups(Ljava/util/List;Z)Ljava/util/HashMap;

    move-result-object v1

    move-object v7, v1

    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/u;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->access$3(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u67e5\u627e\u6d88\u606f,\u83b7\u5f97\u7ed3\u679c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/u;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    move-result-object v0

    const-string/jumbo v1, "chatmsg"

    invoke-virtual {v0, v8, v1, p2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getTableName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "personal_chat_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "personal_chat_"

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v5, "group_chat_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "group_chat_"

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getTableName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/u;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->access$3(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u67e5\u627e\u6d88\u606f,\u804a\u5929\u5e93"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_5

    const-string/jumbo v1, "personal_chat_"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "personal_chat_"

    const-string/jumbo v2, ""

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getRowIdList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/u;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-object v1, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->access$4(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :cond_5
    if-eqz v7, :cond_1

    const-string/jumbo v1, "group_chat_"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "group_chat_"

    const-string/jumbo v2, ""

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getRowIdList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/u;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    move-object v1, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->access$5(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :cond_6
    move-object v7, v1

    goto/16 :goto_2

    :cond_7
    move-object v6, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final doQuery(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 76
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/u;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "chatmsg"

    invoke-virtual {v0, v1, v2, p2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->onSearchResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/u;->a:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->access$3(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5168\u5c40\u641c\u7d22\u67e5\u627e\u6d88\u606f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/data/v;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/bizdata/data/v;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/u;Ljava/util/List;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
