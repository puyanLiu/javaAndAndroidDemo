.class final Lcom/alipay/mobile/socialsdk/chat/ui/s;
.super Ljava/lang/Object;
.source "ShareEntryActivity.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/s;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleNextOperation(ILandroid/app/Activity;Landroid/view/View;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 309
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v3

    .line 312
    :cond_1
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 313
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;-><init>()V

    .line 314
    iget-object v2, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userType:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    .line 315
    iget-object v2, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    .line 316
    iget-object v2, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->displayName:Ljava/lang/String;

    .line 317
    iget-object v2, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->icon:Ljava/lang/String;

    .line 318
    iget v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupMemberCount:I

    iput v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->groupCount:I

    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/s;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    goto :goto_0
.end method
