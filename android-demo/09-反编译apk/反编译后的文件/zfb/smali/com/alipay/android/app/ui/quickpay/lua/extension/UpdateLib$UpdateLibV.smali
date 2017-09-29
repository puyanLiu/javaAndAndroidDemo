.class final Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib$UpdateLibV;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UpdateLibV"
.end annotation


# instance fields
.field private updateLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    .line 69
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib$UpdateLibV;->opcode:I

    .line 70
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib$UpdateLibV;->name:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib$UpdateLibV;->updateLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;

    .line 72
    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib$UpdateLibV;->opcode:I

    packed-switch v0, :pswitch_data_0

    .line 82
    invoke-super {p0, p1}, Lorg/luaj/vm2/lib/VarArgFunction;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_0
    return-object v0

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib$UpdateLibV;->updateLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;->update_promot(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
