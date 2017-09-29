.class final Lcom/alipay/mobile/socialsdk/contact/ui/z;
.super Ljava/lang/Object;
.source "PersonalProfileActivity.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$ItemChoiceSelectListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/z;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/z;->b:Ljava/lang/String;

    .line 1357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(I)V
    .locals 2

    .prologue
    .line 1360
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/z;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    .line 1362
    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1361
    check-cast v0, Landroid/text/ClipboardManager;

    .line 1363
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1365
    :cond_0
    return-void
.end method
