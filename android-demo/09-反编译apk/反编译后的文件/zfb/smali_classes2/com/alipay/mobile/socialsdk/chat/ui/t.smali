.class final Lcom/alipay/mobile/socialsdk/chat/ui/t;
.super Ljava/lang/Object;
.source "ShareEntryActivity.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

.field private final synthetic b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

.field private final synthetic c:Lcom/alipay/mobile/personalbase/model/ShareModel;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/personalbase/model/ShareModel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/t;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/t;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/chat/ui/t;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 363
    const/4 v0, -0x2

    if-ne p3, v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/t;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "directShare"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/t;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/t;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/t;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0, v1, v2, p2}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->sendShareContent(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/t;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 368
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 369
    const-string/jumbo v1, "extra_word"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/t;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

    move-result-object v1

    .line 371
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/t;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    iget v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/ui/t;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;->onPersonSelected(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/t;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->finish()V

    goto :goto_0
.end method
