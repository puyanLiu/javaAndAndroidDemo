.class final Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib$DataLibV;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DataLibV"
.end annotation


# instance fields
.field private dataLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    .line 160
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib$DataLibV;->opcode:I

    .line 161
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib$DataLibV;->name:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib$DataLibV;->dataLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;

    .line 163
    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 167
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib$DataLibV;->opcode:I

    packed-switch v0, :pswitch_data_0

    .line 179
    invoke-super {p0, p1}, Lorg/luaj/vm2/lib/VarArgFunction;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib$DataLibV;->dataLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->data_read(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib$DataLibV;->dataLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->data_write(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 173
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib$DataLibV;->dataLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->data_remove(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 175
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib$DataLibV;->dataLib:Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DataLib;->data_clear(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
