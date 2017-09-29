.class final Lcom/alipay/mobile/socialsdk/chat/ui/i;
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
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/i;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/i;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 553
    const/4 v0, -0x2

    if-ne p3, v0, :cond_0

    .line 556
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/i;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/i;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/i;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->e(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)Lcom/alipay/mobile/personalbase/model/ShareModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->sendShareContent(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V

    goto :goto_0
.end method
