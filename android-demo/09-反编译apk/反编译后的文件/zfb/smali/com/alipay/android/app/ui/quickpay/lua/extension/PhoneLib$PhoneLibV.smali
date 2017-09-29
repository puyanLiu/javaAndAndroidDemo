.class final Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib$PhoneLibV;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PhoneLibV"
.end annotation


# instance fields
.field private phoneLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    .line 79
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib$PhoneLibV;->opcode:I

    .line 80
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib$PhoneLibV;->name:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib$PhoneLibV;->phoneLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;

    .line 82
    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 86
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib$PhoneLibV;->opcode:I

    packed-switch v0, :pswitch_data_0

    .line 94
    invoke-super {p0, p1}, Lorg/luaj/vm2/lib/VarArgFunction;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_0
    return-object v0

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib$PhoneLibV;->phoneLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;->phone_msg(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib$PhoneLibV;->phoneLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;->phone_call(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
