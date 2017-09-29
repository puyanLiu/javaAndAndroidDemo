.class public Lorg/luaj/vm2/lib/PackageLib$require;
.super Lorg/luaj/vm2/lib/OneArgFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/PackageLib;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/lib/PackageLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/OneArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/PackageLib$require;->a:Lorg/luaj/vm2/lib/PackageLib;

    return-void
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 9

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkstring()Lorg/luaj/vm2/LuaString;

    move-result-object v2

    iget-object v0, p0, Lorg/luaj/vm2/lib/PackageLib$require;->a:Lorg/luaj/vm2/lib/PackageLib;

    iget-object v0, v0, Lorg/luaj/vm2/lib/PackageLib;->package_:Lorg/luaj/vm2/LuaTable;

    invoke-static {}, Lorg/luaj/vm2/lib/PackageLib;->access$000()Lorg/luaj/vm2/LuaString;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/luaj/vm2/LuaTable;->get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/luaj/vm2/LuaValue;->get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->toboolean()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lorg/luaj/vm2/lib/PackageLib;->access$100()Lorg/luaj/vm2/LuaString;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "loop or previous error loading module \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/luaj/vm2/lib/PackageLib$require;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/luaj/vm2/lib/PackageLib$require;->a:Lorg/luaj/vm2/lib/PackageLib;

    iget-object v0, v0, Lorg/luaj/vm2/lib/PackageLib;->package_:Lorg/luaj/vm2/LuaTable;

    invoke-static {}, Lorg/luaj/vm2/lib/PackageLib;->access$200()Lorg/luaj/vm2/LuaString;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/luaj/vm2/LuaTable;->get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->checktable()Lorg/luaj/vm2/LuaTable;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lorg/luaj/vm2/LuaTable;->get(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v6

    invoke-virtual {v6}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuffer;

    const-string/jumbo v8, "module \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "\' not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/luaj/vm2/lib/PackageLib$require;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_2
    invoke-virtual {v6, v2}, Lorg/luaj/vm2/LuaValue;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/luaj/vm2/Varargs;->isfunction(I)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6, v1}, Lorg/luaj/vm2/Varargs;->isstring(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, v1}, Lorg/luaj/vm2/Varargs;->tojstring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lorg/luaj/vm2/lib/PackageLib;->access$100()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lorg/luaj/vm2/LuaValue;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    invoke-virtual {v6}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/luaj/vm2/LuaValue;->call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v3, v2, v0}, Lorg/luaj/vm2/LuaValue;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v2}, Lorg/luaj/vm2/LuaValue;->get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-static {}, Lorg/luaj/vm2/lib/PackageLib;->access$100()Lorg/luaj/vm2/LuaString;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    invoke-virtual {v3, v2, v0}, Lorg/luaj/vm2/LuaValue;->set(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)V

    goto/16 :goto_0
.end method
