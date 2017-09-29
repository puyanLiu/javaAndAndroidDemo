.class final Lcom/alipay/mobile/socialsdk/chat/ui/g;
.super Ljava/lang/Object;
.source "ShareEntryActivity.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

.field private final synthetic b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/g;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/g;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 502
    const/4 v0, -0x2

    if-ne p3, v0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/g;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 505
    const-string/jumbo v1, "forwardMessages"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 504
    check-cast v0, Ljava/util/ArrayList;

    .line 506
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/g;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    iget v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 507
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/g;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    .line 506
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->forwardMessageContent(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/g;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->b(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/g;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->b(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/g;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    iget v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/g;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;->onShareSucceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/g;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->finish()V

    goto :goto_0
.end method
