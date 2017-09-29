.class public Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;
.source "OldContactsServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;

.field private b:Lcom/alipay/mobile/framework/service/ext/contact/AccountSelectCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactsService;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;->setResultAccount(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;->setResultAccountList(Ljava/util/List;)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/contact/AccountSelectCallback;

    return-void
.end method


# virtual methods
.method public getAdditionalOperationCallback()Lcom/alipay/mobile/framework/service/ext/contact/AdditionalOperationCallback;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextOperationCallback()Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "SocialSdkContactService onCreate"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 35
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "SocialSdkContactService onDestroy"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public pickFromContactsList(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;->a()V

    .line 71
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;->a:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;

    .line 72
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 73
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 72
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->pickFromContactsList()V

    .line 75
    return-void
.end method

.method public queryAccountProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;
    .locals 1

    .prologue
    .line 151
    const-string/jumbo v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 153
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->getAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectAccountAndGo(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V
    .locals 3

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;->a()V

    .line 125
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 127
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 129
    if-eqz p1, :cond_0

    .line 130
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    const-string/jumbo v2, "multi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->selectMultiAccount(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->selectSingleRecentAccount(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V

    goto :goto_0
.end method

.method public selectContactAccount(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/AccountSelectCallback;Lcom/alipay/mobile/framework/service/ext/contact/AdditionalOperationCallback;)V
    .locals 4

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;->a()V

    .line 96
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/contact/AccountSelectCallback;

    .line 97
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 99
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 100
    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/data/c;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/socialsdk/contact/data/c;-><init>(Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;Lcom/alipay/mobile/framework/service/ext/contact/AccountSelectCallback;)V

    .line 112
    if-eqz p1, :cond_0

    .line 113
    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    const-string/jumbo v3, "multi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->selectMultiAccount(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->selectSingleRecentAccount(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V

    goto :goto_0
.end method

.method public setResultAccount(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;->a:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;->a:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;->onAccountReturned(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    .line 43
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;->a:Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;

    .line 44
    return-void
.end method

.method public setResultAccountList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/contact/AccountSelectCallback;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/contact/AccountSelectCallback;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/service/ext/contact/AccountSelectCallback;->onAccountReturned(Ljava/util/List;)V

    .line 50
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/data/OldContactsServiceImpl;->b:Lcom/alipay/mobile/framework/service/ext/contact/AccountSelectCallback;

    .line 51
    return-void
.end method

.method public startQuery(Ljava/lang/String;ZZLcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;)V
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 63
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 62
    invoke-virtual {v0, p1, p4}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->startQuery(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;)V

    .line 66
    return-void
.end method
