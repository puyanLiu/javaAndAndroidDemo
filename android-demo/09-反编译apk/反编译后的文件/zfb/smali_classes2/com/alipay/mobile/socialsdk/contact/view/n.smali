.class final Lcom/alipay/mobile/socialsdk/contact/view/n;
.super Ljava/lang/Object;
.source "VarifyNameMgrForContacts.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/view/l;

.field private final synthetic b:Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/view/l;Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/n;->a:Lcom/alipay/mobile/socialsdk/contact/view/l;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/view/n;->b:Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/view/n;)Lcom/alipay/mobile/socialsdk/contact/view/l;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/n;->a:Lcom/alipay/mobile/socialsdk/contact/view/l;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/n;->a:Lcom/alipay/mobile/socialsdk/contact/view/l;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/view/l;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/n;->b:Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;

    iget-object v1, v1, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;->memo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/n;->a:Lcom/alipay/mobile/socialsdk/contact/view/l;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/view/l;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->a:Landroid/app/Activity;

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/view/o;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialsdk/contact/view/o;-><init>(Lcom/alipay/mobile/socialsdk/contact/view/n;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 77
    return-void
.end method
