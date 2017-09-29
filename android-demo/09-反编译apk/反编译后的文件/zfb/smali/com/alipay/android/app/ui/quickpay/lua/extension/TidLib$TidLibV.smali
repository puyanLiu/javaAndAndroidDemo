.class final Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib$TidLibV;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TidLibV"
.end annotation


# instance fields
.field private tidLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    .line 77
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib$TidLibV;->opcode:I

    .line 78
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib$TidLibV;->name:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib$TidLibV;->tidLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib;

    .line 80
    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 84
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib$TidLibV;->opcode:I

    packed-switch v0, :pswitch_data_0

    .line 92
    invoke-super {p0, p1}, Lorg/luaj/vm2/lib/VarArgFunction;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_0
    return-object v0

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib$TidLibV;->tidLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib;->tid_update(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib$TidLibV;->tidLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/TidLib;->tid_get(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
