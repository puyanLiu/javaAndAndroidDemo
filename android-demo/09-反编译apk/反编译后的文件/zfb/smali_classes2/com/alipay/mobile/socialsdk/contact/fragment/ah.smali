.class final Lcom/alipay/mobile/socialsdk/contact/fragment/ah;
.super Ljava/lang/Object;
.source "GroupMultiSelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ah;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ah;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->processSureButton()V

    .line 80
    return-void
.end method
