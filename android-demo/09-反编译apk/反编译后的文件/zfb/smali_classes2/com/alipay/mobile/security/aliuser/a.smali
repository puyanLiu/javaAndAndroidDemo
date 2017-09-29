.class final Lcom/alipay/mobile/security/aliuser/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;

.field private final synthetic b:Lcom/alipay/mobile/common/rpc/RpcException;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;Lcom/alipay/mobile/common/rpc/RpcException;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/aliuser/a;->a:Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;

    iput-object p2, p0, Lcom/alipay/mobile/security/aliuser/a;->b:Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/aliuser/a;->b:Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/aliuser/a;->a:Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;

    iget-object v2, p0, Lcom/alipay/mobile/security/aliuser/a;->b:Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/rpc/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/aliuser/a;->a:Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->g:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/aliuser/b;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/aliuser/b;-><init>(Lcom/alipay/mobile/security/aliuser/a;)V

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/aliuser/a;->b:Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/aliuser/a;->a:Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;

    iget-object v1, p0, Lcom/alipay/mobile/security/aliuser/a;->b:Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/rpc/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/aliuser/AlipayUserLoginFragmentEx;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method
