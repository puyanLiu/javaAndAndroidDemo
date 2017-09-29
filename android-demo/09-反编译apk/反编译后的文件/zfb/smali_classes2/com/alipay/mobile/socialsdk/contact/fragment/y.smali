.class final Lcom/alipay/mobile/socialsdk/contact/fragment/y;
.super Ljava/lang/Object;
.source "GroupListMainPage.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$ItemChoiceSelectListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/y;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/y;->b:Ljava/lang/String;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(I)V
    .locals 2

    .prologue
    .line 339
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/y;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage;->removeFromContact(Ljava/lang/String;)V

    .line 342
    :cond_0
    return-void
.end method
