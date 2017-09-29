.class public Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;
.super Lorg/luaj/vm2/lib/TwoArgFunction;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;,
        Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;
    }
.end annotation


# static fields
.field private static final DEFAULT_ATTR_VALUE:Lorg/luaj/vm2/LuaValue;

.field private static final DOC_GET_BY_ATTR:I = 0x1

.field private static final DOC_GET_BY_ID:I = 0x0

.field public static final DOC_NAMES:[Ljava/lang/String;

.field private static final DOC_VALIDATE:I = 0x2

.field public static final LIB_NAME:Ljava/lang/String; = "doc"

.field private static final NODE_ATTR:I = 0x3

.field private static final NODE_EVENT:I = 0x4

.field public static final NODE_NAMES:[Ljava/lang/String;


# instance fields
.field private docScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;

.field private nodeMethods:Lorg/luaj/vm2/LuaTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "getById"

    aput-object v1, v0, v2

    const-string/jumbo v1, "getByAttr"

    aput-object v1, v0, v3

    const-string/jumbo v1, "validate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->DOC_NAMES:[Ljava/lang/String;

    .line 44
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "attr"

    aput-object v1, v0, v2

    const-string/jumbo v1, "event"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->NODE_NAMES:[Ljava/lang/String;

    .line 48
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->DEFAULT_ATTR_VALUE:Lorg/luaj/vm2/LuaValue;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->setDocScriptable(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;)Lorg/luaj/vm2/LuaTable;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->nodeMethods:Lorg/luaj/vm2/LuaTable;

    return-object v0
.end method

.method private adapterToNode(Ljava/util/List;)Lorg/luaj/vm2/Varargs;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;",
            ">;)",
            "Lorg/luaj/vm2/Varargs;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v1, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v1}, Lorg/luaj/vm2/LuaTable;-><init>()V

    .line 152
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 160
    :goto_0
    return-object v0

    .line 156
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 157
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 158
    add-int/lit8 v4, v2, 0x1

    new-instance v5, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;

    invoke-direct {v5, p0, v0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;-><init>(Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;)V

    invoke-virtual {v1, v4, v5}, Lorg/luaj/vm2/LuaTable;->set(ILorg/luaj/vm2/LuaValue;)V

    .line 157
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 160
    goto :goto_0
.end method

.method private static optNode(Lorg/luaj/vm2/LuaValue;)Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;
    .locals 1

    .prologue
    .line 252
    instance-of v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 63
    new-instance v2, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v2}, Lorg/luaj/vm2/LuaTable;-><init>()V

    move v0, v1

    .line 64
    :goto_0
    sget-object v3, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->DOC_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 65
    new-instance v3, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->DOC_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, v0, v4, p0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;-><init>(ILjava/lang/String;Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;)V

    .line 66
    sget-object v4, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->DOC_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v0}, Lorg/luaj/vm2/LuaTable;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->nodeMethods:Lorg/luaj/vm2/LuaTable;

    .line 70
    :goto_1
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->NODE_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 71
    add-int/lit8 v0, v1, 0x3

    .line 72
    new-instance v3, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->NODE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v3, v0, v4, p0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$DocLibV;-><init>(ILjava/lang/String;Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;)V

    .line 73
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->nodeMethods:Lorg/luaj/vm2/LuaTable;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->NODE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    :cond_1
    const-string/jumbo v0, "doc"

    invoke-virtual {p2, v0, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    .line 77
    return-object v2
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->docScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;

    .line 353
    return-void
.end method

.method public doc_get_by_attr(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 113
    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 114
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    .line 131
    :goto_0
    return-object v0

    .line 118
    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    .line 120
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->docScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;

    invoke-interface {v3, v1, v2}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;->getByAttr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 124
    invoke-direct {p0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->adapterToNode(Ljava/util/List;)Lorg/luaj/vm2/Varargs;
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_0

    .line 127
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public doc_get_by_id(Lorg/luaj/vm2/Varargs;)Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v1

    if-gtz v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :cond_1
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->getDocScriptable()Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;->getById(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 101
    :goto_1
    if-eqz v1, :cond_0

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;-><init>(Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;Lcom/alipay/android/app/ui/quickpay/lua/scriptable/INodeScriptable;)V

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    move-object v1, v0

    .line 99
    goto :goto_1

    .line 97
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_1
.end method

.method public doc_validate(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->docScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;

    invoke-interface {v0}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;->validate()Z

    move-result v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getDocScriptable()Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->docScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;

    return-object v0
.end method

.method public node_attr(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 171
    invoke-virtual {p2}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    .line 208
    :goto_0
    return-object v0

    .line 175
    :cond_0
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->optNode(Lorg/luaj/vm2/LuaValue;)Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;

    move-result-object v2

    .line 176
    if-nez v2, :cond_1

    .line 177
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p2}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    .line 181
    if-lt v0, v1, :cond_2

    .line 182
    const/4 v0, 0x0

    .line 184
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2, v1}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-virtual {v2, v1, v3}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;->attr(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 192
    :goto_1
    invoke-static {v0}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object v0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_1

    .line 189
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 193
    :cond_2
    if-lez v0, :cond_4

    .line 194
    const/4 v1, 0x0

    .line 196
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p2, v0}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;->attr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/luaj/vm2/LuaError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 203
    :goto_2
    if-nez v0, :cond_3

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->DEFAULT_ATTR_VALUE:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    .line 198
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    move-object v0, v1

    .line 202
    goto :goto_2

    .line 200
    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    .line 203
    :cond_3
    invoke-static {v0}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_4
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0
.end method

.method public node_event(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 219
    invoke-virtual {p2}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 220
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    .line 240
    :goto_0
    return-object v0

    .line 223
    :cond_0
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->optNode(Lorg/luaj/vm2/LuaValue;)Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;

    move-result-object v0

    .line 224
    if-nez v0, :cond_1

    .line 225
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p2}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v1

    if-lt v1, v2, :cond_2

    .line 230
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2, v1}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lorg/luaj/vm2/Varargs;->checkfunction(I)Lorg/luaj/vm2/LuaFunction;

    move-result-object v2

    .line 232
    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib$Node;->event(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    :cond_2
    :goto_1
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_1

    .line 235
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setDocScriptable(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/DocLib;->docScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IDocScriptable;

    .line 261
    return-void
.end method
