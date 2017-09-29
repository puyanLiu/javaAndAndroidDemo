.class final Lcom/alipay/mobile/socialsdk/chat/ui/j;
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
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/j;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/j;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 563
    const/4 v0, -0x2

    if-ne p3, v0, :cond_0

    .line 566
    :goto_0
    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/j;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/j;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->sendShareContent(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V

    goto :goto_0
.end method
