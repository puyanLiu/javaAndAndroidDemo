.class public Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;
.super Ljava/lang/Object;
.source "SocialQueryListener.java"


# instance fields
.field private a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

.field private b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private c:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

.field public mChatQueryListener:Lcom/alipay/android/phone/globalsearch/api/ChatQueryer;

.field public mContactsQueryListener:Lcom/alipay/android/phone/globalsearch/api/ContactQueryer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/data/r;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/bizdata/data/r;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->mContactsQueryListener:Lcom/alipay/android/phone/globalsearch/api/ContactQueryer;

    .line 72
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/data/u;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/bizdata/data/u;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->mChatQueryListener:Lcom/alipay/android/phone/globalsearch/api/ChatQueryer;

    .line 25
    return-void
.end method

.method private a(Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getRowIdList()Ljava/util/List;

    move-result-object v1

    .line 226
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 227
    if-lez p3, :cond_6

    if-le v0, p3, :cond_6

    .line 228
    const/4 v0, 0x0

    invoke-interface {v1, v0, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 229
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    move-object v3, v1

    .line 231
    :goto_0
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 232
    const/4 v1, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->queryExistingAccounts(Ljava/util/List;ZZ)Ljava/util/HashMap;

    move-result-object v5

    .line 233
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    :goto_1
    return-void

    .line 236
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getFieldList()Ljava/util/List;

    move-result-object v6

    .line 237
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 238
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v0, ""

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x0

    move v4, v0

    :goto_2
    if-lt v4, v2, :cond_3

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u547d\u4e2d\u597d\u53cb\u5e93:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u547d\u4e2d\u597d\u53cb\u5e93, \u627e\u5230\u4eba"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 240
    :cond_3
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 242
    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, "-"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 246
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 248
    if-eqz v1, :cond_2

    .line 249
    new-instance v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    iget-object v4, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "alipays://platformapi/startApp?appId=20000167&targetAppId=back&tUserId="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "&tUserType=1&tLoginId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->bizId:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->highLightAccountInfo(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v4, 0x0

    aget-object v4, v0, v4

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v0, v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    aget-object v0, v0, v4

    iput-object v0, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    :cond_5
    new-instance v0, Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->ext:Ljava/util/Map;

    iget-object v0, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->ext:Ljava/util/Map;

    const-string/jumbo v4, "nameNoTag"

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_6
    move v2, v0

    move-object v3, v1

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 427
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 428
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 429
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 440
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 441
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->queryExistingAccounts(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v3

    .line 442
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 476
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u547d\u4e2d\u7fa4\u6635\u79f0\u5e93, \u901a\u8fc7\u7fa4\u6635\u79f0\u627e\u5230\u7fa4\u603b\u548c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    return-void

    .line 430
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 431
    invoke-virtual {p4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 432
    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;

    .line 433
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data1:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 434
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 436
    :cond_4
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data2:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 442
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 443
    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;

    .line 444
    if-eqz v1, :cond_1

    .line 445
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data1:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data2:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data1:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data1:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    .line 452
    iget-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    iget-object v5, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data2:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data2:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 456
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v6, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data3:Ljava/lang/String;

    iget-object v7, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data3:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 458
    const-string/jumbo v8, "#00AAFF"

    .line 457
    invoke-virtual {v0, v6, p1, v7, v8}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data3:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 464
    :goto_2
    new-instance v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    .line 465
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    .line 466
    iget-object v5, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupImg:Ljava/lang/String;

    iput-object v5, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    .line 467
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "alipays://platformapi/startApp?appId=20000167&targetAppId=back&tUserId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    iget-object v6, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "&tUserType=2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 467
    iput-object v5, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    .line 469
    iget-object v5, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    iput-object v5, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->bizId:Ljava/lang/String;

    .line 470
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u5305\u542b: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    .line 471
    new-instance v0, Ljava/util/HashMap;

    const/4 v5, 0x2

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->ext:Ljava/util/Map;

    .line 472
    iget-object v0, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->ext:Ljava/util/Map;

    const-string/jumbo v5, "groupCount"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget-object v0, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->ext:Ljava/util/Map;

    const-string/jumbo v5, "nameNoTag"

    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    if-lez p6, :cond_1

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v0, p6, :cond_2

    goto/16 :goto_1

    .line 462
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method private a(Ljava/util/List;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 421
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u547d\u4e2d\u7fa4\u5e93, \u627e\u5230\u7fa4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 400
    invoke-virtual {p5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    .line 401
    if-eqz v0, :cond_2

    .line 402
    const-string/jumbo v3, "groupName"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "aliasGroupName"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 406
    :cond_4
    new-instance v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    .line 407
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 408
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 409
    const-string/jumbo v6, "#00AAFF"

    .line 408
    invoke-virtual {v4, v3, p3, v5, v6}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    .line 411
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupImg:Ljava/lang/String;

    iput-object v3, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "alipays://platformapi/startApp?appId=20000167&targetAppId=back&tUserId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&tUserType=2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 412
    iput-object v3, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    .line 414
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    iput-object v3, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->bizId:Ljava/lang/String;

    .line 415
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->ext:Ljava/util/Map;

    .line 416
    iget-object v3, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->ext:Ljava/util/Map;

    const-string/jumbo v4, "groupCount"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v3, v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->ext:Ljava/util/Map;

    const-string/jumbo v4, "nameNoTag"

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    invoke-virtual {p4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private a(Ljava/util/List;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 320
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 321
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->queryExistingAccounts(Ljava/util/List;ZZ)Ljava/util/HashMap;

    move-result-object v5

    .line 322
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 332
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 335
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u547d\u4e2d\u8d26\u6237\u5e93, \u901a\u8fc7\u4eba\u627e\u5230\u7fa4\u603b\u548c"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 326
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 327
    if-eqz v1, :cond_2

    .line 328
    iget-object v2, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 331
    :cond_5
    if-lez p6, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->size()I

    move-result v1

    move/from16 v0, p6

    if-ge v1, v0, :cond_3

    goto :goto_1

    .line 328
    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    iget-object v2, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2, p3, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->matchHighLightDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v8, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v8}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    iget-object v9, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupImg:Ljava/lang/String;

    iput-object v9, v8, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "alipays://platformapi/startApp?appId=20000167&targetAppId=back&tUserId="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "&tUserType=2"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    iget-object v9, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    iput-object v9, v8, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->bizId:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\u5305\u542b: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    const/4 v9, 0x2

    invoke-direct {v2, v9}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v8, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->ext:Ljava/util/Map;

    iget-object v2, v8, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->ext:Ljava/util/Map;

    const-string/jumbo v9, "groupCount"

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v8, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->ext:Ljava/util/Map;

    const-string/jumbo v9, "nameNoTag"

    invoke-virtual {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-lez p6, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->size()I

    move-result v2

    move/from16 v0, p6

    if-ge v2, v0, :cond_5

    goto/16 :goto_2
.end method

.method static synthetic access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a(Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;Ljava/util/List;Ljava/lang/String;ILjava/util/List;)V
    .locals 7

    .prologue
    .line 256
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->composeMemberMappingGroup(ZZLjava/util/HashMap;Ljava/util/HashMap;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->handleContactQueryResult(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;I)V

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 482
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    if-eqz p5, :cond_1

    new-instance v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v0}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\u6761\u76f8\u5173\u8bb0\u5f55"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->groupId:Ljava/lang/String;

    const-string/jumbo v2, "chatGroup"

    iput-object v2, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionType:Ljava/lang/String;

    const-string/jumbo v2, "WALLET-SEARCH|ChatCell"

    iput-object v2, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->templateId:Ljava/lang/String;

    iput-object p4, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->tableName:Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->chatMsgSize:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    iget-object v2, p2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->queryMessagesByRowids(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    new-instance v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    iget-object v4, p2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "alipays://platformapi/startApp?appId=20000167&targetAppId=back&tUserId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&tUserType=1&tLoginId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&search_item_localid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->localId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    const/16 v6, 0x19

    const-string/jumbo v7, "#00AAFF"

    invoke-virtual {v4, v5, p1, v6, v7}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    iget-object v4, p2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->groupId:Ljava/lang/String;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    iget-wide v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->createTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->timestamp:Ljava/lang/String;

    const-string/jumbo v0, "WALLET-SEARCH|ChatCell"

    iput-object v0, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->templateId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic access$5(Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 518
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    if-eqz p5, :cond_1

    new-instance v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v0}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    invoke-virtual {p2}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupImg:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\u6761\u76f8\u5173\u8bb0\u5f55"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->groupId:Ljava/lang/String;

    const-string/jumbo v2, "chatGroup"

    iput-object v2, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionType:Ljava/lang/String;

    const-string/jumbo v2, "WALLET-SEARCH|ChatCell"

    iput-object v2, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->templateId:Ljava/lang/String;

    iput-object p4, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->tableName:Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->chatMsgSize:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    iget-object v2, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->queryMessagesByRowids(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    new-instance v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    invoke-direct {v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;-><init>()V

    invoke-virtual {p2}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    iget-object v4, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupImg:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "alipays://platformapi/startApp?appId=20000167&targetAppId=back&tUserId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&tUserType=2&search_item_localid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->localId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->bizMemo:Ljava/lang/String;

    const/16 v6, 0x19

    const-string/jumbo v7, "#00AAFF"

    invoke-virtual {v4, v5, p1, v6, v7}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    iget-object v4, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->groupId:Ljava/lang/String;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    iget-wide v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->createTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->timestamp:Ljava/lang/String;

    const-string/jumbo v0, "WALLET-SEARCH|ChatCell"

    iput-object v0, v3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->templateId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public convertRowIdsToIntIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 652
    if-nez p1, :cond_1

    .line 653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 665
    :cond_0
    return-object v0

    .line 655
    :cond_1
    const-string/jumbo v0, "\'"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 657
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 658
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 660
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 661
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public doSearchFriend(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->c:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->INDEX_NAME_PERSONFRIEND:Ljava/lang/String;

    .line 166
    const/16 v2, 0x3e8

    .line 165
    invoke-virtual {v0, v1, p1, v6, v2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->doSearchWithSort(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 167
    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "itemType"

    aput-object v1, v2, v6

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v7

    const-string/jumbo v1, "icon"

    aput-object v1, v2, v8

    const-string/jumbo v1, "displayName"

    aput-object v1, v2, v9

    const-string/jumbo v1, "desc"

    aput-object v1, v2, v10

    const/4 v1, 0x5

    const-string/jumbo v3, "groupCount"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string/jumbo v3, "nameNoTag"

    aput-object v3, v2, v1

    .line 168
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 169
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 184
    :goto_0
    return-object v0

    .line 172
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-direct {p0, v0, p1, v6, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a(Lcom/alipay/android/phone/globalsearch/api/IndexResult;Ljava/lang/String;ILjava/util/List;)V

    .line 174
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 184
    goto :goto_0

    .line 174
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 175
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    .line 176
    const-string/jumbo v4, "1"

    aput-object v4, v3, v6

    .line 177
    iget-object v4, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->bizId:Ljava/lang/String;

    aput-object v4, v3, v7

    .line 178
    iget-object v4, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    aput-object v4, v3, v8

    .line 179
    iget-object v4, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    aput-object v4, v3, v9

    .line 180
    iget-object v4, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    aput-object v4, v3, v10

    .line 181
    const/4 v4, 0x6

    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->ext:Ljava/util/Map;

    const-string/jumbo v5, "nameNoTag"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    .line 182
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public doSearchGroup(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/database/Cursor;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->c:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->INDEX_NAME_PERSON:Ljava/lang/String;

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, p1, v6, v2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->c:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->INDEX_NAME_GROUP:Ljava/lang/String;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, p1, v6, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 191
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->c:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->INDEX_NAME_GROUPNICK:Ljava/lang/String;

    const/16 v4, 0x3e8

    invoke-virtual {v1, v3, p1, v6, v4}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    if-eqz v2, :cond_0

    .line 194
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    :cond_0
    if-eqz v3, :cond_1

    .line 197
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    :cond_1
    if-eqz v0, :cond_2

    .line 200
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 203
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->handleContactQueryResult(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;I)V

    .line 204
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "itemType"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v8

    const-string/jumbo v1, "icon"

    aput-object v1, v0, v9

    const-string/jumbo v1, "displayName"

    aput-object v1, v0, v10

    const-string/jumbo v1, "desc"

    aput-object v1, v0, v11

    const/4 v1, 0x5

    const-string/jumbo v2, "groupCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "nameNoTag"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 205
    const-string/jumbo v2, "groupImg"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "groupName"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "aliasGroupName"

    aput-object v2, v0, v1

    .line 206
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 207
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 220
    return-object v1

    .line 207
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 208
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    .line 209
    const-string/jumbo v4, "2"

    aput-object v4, v3, v6

    .line 210
    iget-object v4, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->bizId:Ljava/lang/String;

    aput-object v4, v3, v8

    .line 211
    iget-object v4, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    aput-object v4, v3, v9

    .line 212
    iget-object v4, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    aput-object v4, v3, v10

    .line 213
    iget-object v4, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->desc:Ljava/lang/String;

    aput-object v4, v3, v11

    .line 214
    const/4 v4, 0x5

    iget-object v5, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->ext:Ljava/util/Map;

    const-string/jumbo v7, "groupCount"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    .line 215
    const/4 v4, 0x6

    iget-object v5, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->ext:Ljava/util/Map;

    const-string/jumbo v7, "nameNoTag"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    .line 216
    const/4 v4, 0x7

    iget-object v5, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 217
    const/16 v4, 0x8

    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    aput-object v0, v3, v4

    .line 218
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public handleContactQueryResult(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;I)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/IndexResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 271
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 305
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 309
    :cond_1
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 310
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 314
    return-void

    .line 271
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    .line 272
    invoke-virtual {v6}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getTableName()Ljava/lang/String;

    move-result-object v9

    .line 273
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v6}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getRowIdList()Ljava/util/List;

    move-result-object v2

    .line 275
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 276
    const-string/jumbo v3, "chatgroup_info"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-lez p6, :cond_8

    move/from16 v0, p6

    if-le v1, v0, :cond_8

    .line 277
    const/4 v1, 0x0

    move/from16 v0, p6

    invoke-interface {v2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 278
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    move v7, v1

    .line 280
    :goto_2
    invoke-virtual {v6}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getFieldList()Ljava/util/List;

    move-result-object v12

    .line 281
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 282
    const/4 v1, 0x0

    move v8, v1

    :goto_3
    if-lt v8, v7, :cond_4

    .line 289
    const-string/jumbo v1, "chatgroup_info"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 290
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u547d\u4e2d\u7fa4\u5e93:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    .line 291
    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a(Ljava/util/List;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 304
    :cond_3
    :goto_4
    if-lez p6, :cond_0

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    move/from16 v0, p6

    if-ge v1, v0, :cond_1

    goto/16 :goto_0

    .line 283
    :cond_4
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 284
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 285
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v13, "-"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_3

    .line 292
    :cond_5
    const-string/jumbo v1, "contact_relation"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 293
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u547d\u4e2d\u7fa4\u6635\u79f0\u5e93:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    .line 295
    invoke-virtual {v6}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getRowId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->convertRowIdsToIntIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 296
    invoke-virtual {v1, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->queryMemberNicks(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v7

    .line 297
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v3, p0

    move-object/from16 v4, p2

    move-object/from16 v8, p5

    move/from16 v9, p6

    .line 298
    invoke-direct/range {v3 .. v9}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;I)V

    goto :goto_4

    .line 300
    :cond_6
    const-string/jumbo v1, "ali_account"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u641c\u7fa4\u547d\u4e2d\u8d26\u6237\u5e93:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p6

    .line 302
    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a(Ljava/util/List;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;I)V

    goto/16 :goto_4

    .line 311
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 312
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    move v7, v1

    goto/16 :goto_2
.end method

.method public highLightAccountInfo(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 555
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 556
    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 557
    const-string/jumbo v2, "remarkName"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 558
    iget-object v2, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v2, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    .line 560
    iget-object v3, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, "#00AAFF"

    .line 559
    invoke-virtual {v1, v2, p2, v3, v4}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 601
    :cond_0
    :goto_0
    return-object v0

    .line 562
    :cond_1
    aput-object v1, v0, v5

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5907\u6ce8\u540d: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v3, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    .line 564
    iget-object v4, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string/jumbo v5, "#00AAFF"

    .line 563
    invoke-virtual {v2, v3, p2, v4, v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_0

    .line 566
    :cond_2
    const-string/jumbo v2, "groupNickName"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 567
    iget-object v2, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 568
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v2, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    .line 569
    iget-object v3, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, "#00AAFF"

    .line 568
    invoke-virtual {v1, v2, p2, v3, v4}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0

    .line 571
    :cond_3
    aput-object v1, v0, v5

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u7fa4\u6635\u79f0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v3, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    .line 573
    iget-object v4, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string/jumbo v5, "#00AAFF"

    .line 572
    invoke-virtual {v2, v3, p2, v4, v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_0

    .line 575
    :cond_4
    const-string/jumbo v2, "nickName"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 576
    iget-object v2, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 577
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v2, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    .line 578
    iget-object v3, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, "#00AAFF"

    .line 577
    invoke-virtual {v1, v2, p2, v3, v4}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto/16 :goto_0

    .line 580
    :cond_5
    aput-object v1, v0, v5

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6635\u79f0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v3, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    .line 582
    iget-object v4, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string/jumbo v5, "#00AAFF"

    .line 581
    invoke-virtual {v2, v3, p2, v4, v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    goto/16 :goto_0

    .line 584
    :cond_6
    const-string/jumbo v2, "name"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 585
    iget-object v2, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 586
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 588
    :cond_7
    iget-object v2, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 589
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v2, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    iget-object v3, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 590
    const-string/jumbo v4, "#00AAFF"

    .line 589
    invoke-virtual {v1, v2, p2, v3, v4}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto/16 :goto_0

    .line 592
    :cond_8
    aput-object v1, v0, v5

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u771f\u5b9e\u59d3\u540d: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v3, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    .line 594
    iget-object v4, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string/jumbo v5, "#00AAFF"

    .line 593
    invoke-virtual {v2, v3, p2, v4, v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    goto/16 :goto_0

    .line 596
    :cond_9
    const-string/jumbo v2, "account"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    aput-object v1, v0, v5

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8d26\u6237: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v3, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 599
    iget-object v4, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string/jumbo v5, "#00AAFF"

    .line 598
    invoke-virtual {v2, v3, p2, v4, v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    goto/16 :goto_0
.end method

.method public matchHighLightDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 605
    invoke-virtual {p3}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 606
    const-string/jumbo v2, "name"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-object v0

    .line 609
    :cond_1
    iget-object v2, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "name"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 610
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    iget-object v2, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "#00AAFF"

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 611
    :cond_2
    iget-object v2, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "nickName"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 612
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    iget-object v2, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 613
    const-string/jumbo v3, "#00AAFF"

    .line 612
    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 614
    :cond_3
    iget-object v2, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "remarkName"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 615
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    iget-object v2, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 616
    const-string/jumbo v3, "#00AAFF"

    .line 615
    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 617
    :cond_4
    const-string/jumbo v2, "account"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 622
    const-string/jumbo v1, "name"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 623
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v3, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    iget-object v4, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 624
    const-string/jumbo v5, "#00AAFF"

    .line 623
    invoke-virtual {v1, v3, p2, v4, v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 632
    :goto_1
    if-eqz v1, :cond_0

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 625
    :cond_5
    const-string/jumbo v1, "nickName"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 626
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v3, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    iget-object v4, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 627
    const-string/jumbo v5, "#00AAFF"

    .line 626
    invoke-virtual {v1, v3, p2, v4, v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 628
    :cond_6
    const-string/jumbo v1, "remarkName"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 629
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v3, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    iget-object v4, p3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 630
    const-string/jumbo v5, "#00AAFF"

    .line 629
    invoke-virtual {v1, v3, p2, v4, v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    move-object v1, v0

    goto :goto_1
.end method

.method public matchHighLightDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 641
    invoke-virtual {p3}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 642
    iget-object v1, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "groupName"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupName:Ljava/lang/String;

    iget-object v2, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "#00AAFF"

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    :goto_0
    return-object v0

    .line 644
    :cond_0
    iget-object v1, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->aliasGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "aliasGroupName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->aliasGroupName:Ljava/lang/String;

    iget-object v2, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->aliasGroupName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 646
    const-string/jumbo v3, "#00AAFF"

    .line 645
    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 648
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerChatListener(Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;)V
    .locals 3

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 160
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->mChatQueryListener:Lcom/alipay/android/phone/globalsearch/api/ChatQueryer;

    const-string/jumbo v2, "chatmsg"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->registerChatMsgQueryer(Lcom/alipay/android/phone/globalsearch/api/ChatQueryer;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public registerContactListener(Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;)V
    .locals 3

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 152
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 153
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->c:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->mContactsQueryListener:Lcom/alipay/android/phone/globalsearch/api/ContactQueryer;

    const-string/jumbo v2, "contact"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->registerContactQueryer(Lcom/alipay/android/phone/globalsearch/api/ContactQueryer;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->mContactsQueryListener:Lcom/alipay/android/phone/globalsearch/api/ContactQueryer;

    const-string/jumbo v2, "group"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->registerContactQueryer(Lcom/alipay/android/phone/globalsearch/api/ContactQueryer;Ljava/lang/String;)V

    .line 156
    return-void
.end method
