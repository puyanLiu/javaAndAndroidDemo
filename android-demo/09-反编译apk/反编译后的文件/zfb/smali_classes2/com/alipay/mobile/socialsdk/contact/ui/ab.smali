.class final Lcom/alipay/mobile/socialsdk/contact/ui/ab;
.super Ljava/lang/Object;
.source "PersonalProfileActivity.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    .line 1524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(I)V
    .locals 2

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->g(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    .line 1528
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->h(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1529
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->i(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    .line 1545
    :cond_0
    :goto_0
    return-void

    .line 1530
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->j(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1531
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->k(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->starFriend:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->setOrCancelStarFriend(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 1532
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->l(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1533
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->m(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    goto :goto_0

    .line 1534
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->n(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1535
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->o(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    goto :goto_0

    .line 1536
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->p(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1537
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->q(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    goto :goto_0

    .line 1538
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->r(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1539
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->s(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    goto :goto_0

    .line 1540
    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->t(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1541
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->e(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    goto :goto_0

    .line 1542
    :cond_8
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->u(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ab;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->v(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    goto/16 :goto_0
.end method
