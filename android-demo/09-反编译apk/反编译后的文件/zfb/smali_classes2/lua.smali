.class public Llua;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/luaj/vm2/Globals;

.field private static b:Z

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Llua;->b:Z

    const/4 v0, 0x0

    sput-object v0, Llua;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;ILorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/luaj/vm2/LuaValue;->tableOf()Lorg/luaj/vm2/LuaTable;

    move-result-object v2

    move v0, v1

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    sub-int v3, v0, p2

    aget-object v4, p1, v0

    invoke-static {v4}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/luaj/vm2/LuaTable;->set(ILorg/luaj/vm2/LuaValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/luaj/vm2/LuaTable;->set(ILorg/luaj/vm2/LuaValue;)V

    const/4 v0, -0x1

    const-string/jumbo v1, "luaj"

    invoke-static {v1}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/luaj/vm2/LuaTable;->set(ILorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "arg"

    invoke-virtual {p3, v0, v2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaTable;->unpack()Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0
.end method

.method private static a()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "usage: java -cp luaj-jse.jar lua [options] [script [args]].\nAvailable options are:\n  -e stat  execute string \'stat\'\n  -l name  require library \'name\'\n  -i       enter interactive mode after executing \'script\'\n  -v       show version information\n  -b      \tuse luajc bytecode-to-bytecode compiler (requires bcel on class path)\n  -n      \tnodebug - do not load debug library by default\n  -p      \tprint the prototype\n  -c enc  \tuse the supplied encoding \'enc\' for input files\n  --       stop handling options\n  -        execute stdin and stop handling options"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Llua;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Llua;->a:Lorg/luaj/vm2/Globals;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Llua;->c:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p1}, Lorg/luaj/vm2/Globals;->load(Ljava/io/Reader;Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    sget-boolean v1, Llua;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isclosure()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->checkclosure()Lorg/luaj/vm2/LuaClosure;

    move-result-object v1

    iget-object v1, v1, Lorg/luaj/vm2/LuaClosure;->p:Lorg/luaj/vm2/Prototype;

    invoke-static {v1}, Lorg/luaj/vm2/Print;->print(Lorg/luaj/vm2/Prototype;)V

    :cond_0
    sget-object v1, Llua;->a:Lorg/luaj/vm2/Globals;

    invoke-static {p1, p2, p3, v1}, Llua;->a(Ljava/lang/String;[Ljava/lang/String;ILorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/LuaValue;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :cond_1
    :try_start_3
    sget-object v0, Llua;->a:Lorg/luaj/vm2/Globals;

    const-string/jumbo v2, "bt"

    sget-object v3, Llua;->a:Lorg/luaj/vm2/Globals;

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/luaj/vm2/Globals;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v1

    goto :goto_2
.end method

.method private static b()V
    .locals 5

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v1, "=stdin"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Llua;->a(Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12

    const/4 v4, 0x0

    const/4 v3, 0x1

    array-length v1, p0

    if-nez v1, :cond_1

    move v1, v3

    :goto_0
    const/4 v5, 0x0

    move v6, v4

    move v7, v4

    move v8, v3

    move v9, v4

    move v10, v1

    move v1, v4

    :goto_1
    :try_start_0
    array-length v2, p0

    if-ge v1, v2, :cond_7

    if-eqz v8, :cond_7

    aget-object v2, p0, v1

    const-string/jumbo v11, "-"

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_7

    aget-object v2, p0, v1

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move-object v2, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    invoke-static {}, Llua;->a()V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v2

    goto :goto_1

    :cond_1
    move v1, v4

    goto :goto_0

    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    array-length v2, p0

    if-ge v1, v2, :cond_0

    move-object v2, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    goto :goto_2

    :sswitch_1
    move-object v2, v5

    move v6, v7

    move v5, v3

    move v7, v8

    move v8, v9

    move v9, v10

    goto :goto_2

    :sswitch_2
    add-int/lit8 v1, v1, 0x1

    array-length v2, p0

    if-lt v1, v2, :cond_2

    invoke-static {}, Llua;->a()V

    :cond_2
    if-eqz v5, :cond_3

    move-object v2, v5

    :goto_3
    aget-object v5, p0, v1

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_4
    :goto_4
    return-void

    :sswitch_3
    move-object v2, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v3

    goto :goto_2

    :sswitch_4
    move-object v2, v5

    move v9, v10

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    goto :goto_2

    :sswitch_5
    move-object v2, v5

    move v7, v8

    move v5, v6

    move v8, v9

    move v6, v3

    move v9, v10

    goto :goto_2

    :sswitch_6
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Llua;->b:Z

    move-object v2, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    goto :goto_2

    :sswitch_7
    add-int/lit8 v1, v1, 0x1

    array-length v2, p0

    if-lt v1, v2, :cond_5

    invoke-static {}, Llua;->a()V

    :cond_5
    aget-object v2, p0, v1

    sput-object v2, Llua;->c:Ljava/lang/String;

    move-object v2, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    goto :goto_2

    :sswitch_8
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x2

    if-le v2, v8, :cond_6

    invoke-static {}, Llua;->a()V

    :cond_6
    move-object v2, v5

    move v8, v9

    move v5, v6

    move v9, v10

    move v6, v7

    move v7, v4

    goto/16 :goto_2

    :cond_7
    if-eqz v9, :cond_8

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "Luaj-jse 3.0 Copyright (c) 2012 Luaj.org.org"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    if-eqz v7, :cond_a

    invoke-static {}, Lorg/luaj/vm2/lib/jse/JsePlatform;->standardGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v1

    :goto_5
    sput-object v1, Llua;->a:Lorg/luaj/vm2/Globals;

    if-eqz v6, :cond_9

    sget-object v1, Llua;->a:Lorg/luaj/vm2/Globals;

    invoke-static {v1}, Lorg/luaj/vm2/luajc/LuaJC;->install(Lorg/luaj/vm2/Globals;)V

    :cond_9
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    move v6, v1

    :goto_6
    move v8, v4

    :goto_7
    if-ge v8, v6, :cond_c

    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    :try_start_2
    sget-object v1, Llua;->a:Lorg/luaj/vm2/Globals;

    const-string/jumbo v7, "require"

    invoke-virtual {v1, v7}, Lorg/luaj/vm2/Globals;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/luaj/vm2/LuaValue;->call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_8
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_7

    :cond_a
    :try_start_3
    invoke-static {}, Lorg/luaj/vm2/lib/jse/JsePlatform;->debugGlobals()Lorg/luaj/vm2/Globals;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    goto :goto_5

    :cond_b
    move v6, v4

    goto :goto_6

    :catch_1
    move-exception v1

    move-object v7, v1

    :try_start_4
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/luaj/vm2/LuaValue;

    sget-object v11, Llua;->a:Lorg/luaj/vm2/Globals;

    invoke-virtual {v1, v9, v11}, Lorg/luaj/vm2/LuaValue;->call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_8

    :catch_2
    move-exception v1

    :try_start_5
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string/jumbo v5, "loadLibrary("

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v4, ") failed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c
    move v1, v4

    move v2, v3

    :goto_9
    array-length v3, p0

    if-ge v1, v3, :cond_e

    if-eqz v2, :cond_d

    aget-object v3, p0, v1

    const-string/jumbo v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    new-instance v2, Ljava/io/FileInputStream;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    aget-object v3, p0, v1

    invoke-static {v2, v3, p0, v1}, Llua;->a(Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/String;I)V

    :cond_e
    :goto_a
    if-eqz v10, :cond_4

    invoke-static {}, Llua;->b()V

    goto/16 :goto_4

    :cond_f
    const-string/jumbo v3, "-"

    aget-object v5, p0, v1

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    const-string/jumbo v3, "=stdin"

    invoke-static {v2, v3, p0, v1}, Llua;->a(Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/String;I)V

    goto :goto_a

    :cond_10
    aget-object v3, p0, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :sswitch_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :sswitch_a
    add-int/lit8 v1, v1, 0x1

    new-instance v3, Ljava/io/ByteArrayInputStream;

    aget-object v5, p0, v1

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v5, "string"

    invoke-static {v3, v5, p0, v1}, Llua;->a(Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_b

    :sswitch_b
    move v2, v4

    goto :goto_b

    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_8
        0x62 -> :sswitch_1
        0x63 -> :sswitch_7
        0x65 -> :sswitch_0
        0x69 -> :sswitch_3
        0x6c -> :sswitch_2
        0x6e -> :sswitch_5
        0x70 -> :sswitch_6
        0x76 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2d -> :sswitch_b
        0x63 -> :sswitch_9
        0x65 -> :sswitch_a
        0x6c -> :sswitch_9
    .end sparse-switch
.end method
