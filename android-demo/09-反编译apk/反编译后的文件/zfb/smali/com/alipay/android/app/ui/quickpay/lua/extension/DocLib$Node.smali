.class public final Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;
.super Lorg/luaj/vm2/LuaValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "Node"
.end annotation


# instance fields
.field private a:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;

.field final synthetic this$0:Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;->this$0:Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;

    invoke-direct {p0}, Lorg/luaj/vm2/LuaValue;-><init>()V

    .line 274
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;->a:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;

    .line 275
    return-void
.end method


# virtual methods
.method public final attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;->a:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final attr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;->a:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;->attr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final event(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;->a:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;->event(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Z

    .line 287
    return-void
.end method

.method public final get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;->this$0:Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->access$000(Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;)Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/LuaTable;->get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public final type()I
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x7

    return v0
.end method

.method public final typename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    const-string/jumbo v0, "userdata"

    return-object v0
.end method
