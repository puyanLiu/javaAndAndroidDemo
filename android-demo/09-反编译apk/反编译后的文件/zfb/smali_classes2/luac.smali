.class public Lluac;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lluac;->a:Z

    const-string/jumbo v0, "luac.out"

    iput-object v0, p0, Lluac;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lluac;->c:Z

    iput-boolean v1, p0, Lluac;->d:Z

    iput-boolean v1, p0, Lluac;->e:Z

    iput v1, p0, Lluac;->f:I

    iput-boolean v1, p0, Lluac;->g:Z

    iput-boolean v6, p0, Lluac;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lluac;->i:Ljava/lang/String;

    move v0, v1

    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v0, v2, :cond_5

    iget-boolean v2, p0, Lluac;->h:Z

    if-eqz v2, :cond_0

    aget-object v2, p1, v0

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_0

    aget-object v2, p1, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-static {}, Lluac;->a()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lluac;->a:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_2
    return-void

    :sswitch_1
    add-int/lit8 v0, v0, 0x1

    :try_start_1
    array-length v2, p1

    if-lt v0, v2, :cond_1

    invoke-static {}, Lluac;->a()V

    :cond_1
    aget-object v2, p1, v0

    iput-object v2, p0, Lluac;->b:Ljava/lang/String;

    goto :goto_1

    :sswitch_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lluac;->c:Z

    goto :goto_1

    :sswitch_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lluac;->d:Z

    goto :goto_1

    :sswitch_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lluac;->e:Z

    goto :goto_1

    :sswitch_5
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v4, :cond_2

    invoke-static {}, Lluac;->a()V

    :cond_2
    aget-object v2, p1, v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lluac;->f:I

    goto :goto_1

    :sswitch_6
    const/4 v2, 0x1

    iput-boolean v2, p0, Lluac;->g:Z

    goto :goto_1

    :sswitch_7
    add-int/lit8 v0, v0, 0x1

    array-length v2, p1

    if-lt v0, v2, :cond_3

    invoke-static {}, Lluac;->a()V

    :cond_3
    aget-object v2, p1, v0

    iput-object v2, p0, Lluac;->i:Ljava/lang/String;

    goto :goto_1

    :sswitch_8
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_4

    invoke-static {}, Lluac;->a()V

    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lluac;->h:Z

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lluac;->g:Z

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "Luaj-jse 3.0Copyright (C) 2009 luaj.org"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lluac;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {}, Lorg/luaj/vm2/lib/jse/JsePlatform;->standardGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lluac;->h:Z

    move v0, v1

    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_a

    iget-boolean v1, p0, Lluac;->h:Z

    if-eqz v1, :cond_7

    aget-object v1, p1, v0

    const-string/jumbo v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    aget-object v1, p1, v0

    const/4 v4, 0x0

    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/FileInputStream;

    aget-object v5, p1, v0

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4, v1, v2}, Lluac;->a(Lorg/luaj/vm2/Globals;Ljava/io/InputStream;Ljava/lang/String;Ljava/io/OutputStream;)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v6, :cond_9

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    const-string/jumbo v4, "=stdin"

    invoke-direct {p0, v3, v1, v4, v2}, Lluac;->a(Lorg/luaj/vm2/Globals;Ljava/io/InputStream;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_9
    :try_start_4
    aget-object v1, p1, v0

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto :goto_4

    :sswitch_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lluac;->h:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :sswitch_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_8
        0x63 -> :sswitch_7
        0x65 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6c -> :sswitch_0
        0x6f -> :sswitch_1
        0x70 -> :sswitch_2
        0x73 -> :sswitch_3
        0x76 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2d -> :sswitch_9
        0x63 -> :sswitch_a
        0x6f -> :sswitch_a
    .end sparse-switch
.end method

.method private static a()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "usage: java -cp luaj-jse.jar luac [options] [filenames].\nAvailable options are:\n  -        process stdin\n  -l       list\n  -o name  output to file \'name\' (default is \"luac.out\")\n  -p       parse only\n  -s       strip debug information\n  -e       little endian format for numbers\n  -i<n>    number format \'n\', (n=0,1 or 4, default=0)\n  -v       show version information\n  -c enc  \tuse the supplied encoding \'enc\' for input files\n  --       stop handling options\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private a(Lorg/luaj/vm2/Globals;Ljava/io/InputStream;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lluac;->i:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lluac;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p3}, Lorg/luaj/vm2/Globals;->compilePrototype(Ljava/io/Reader;Ljava/lang/String;)Lorg/luaj/vm2/Prototype;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Lluac;->a:Z

    if-eqz v2, :cond_0

    invoke-static {v0}, Lorg/luaj/vm2/Print;->printCode(Lorg/luaj/vm2/Prototype;)V

    :cond_0
    iget-boolean v2, p0, Lluac;->c:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lluac;->d:Z

    iget v3, p0, Lluac;->f:I

    iget-boolean v4, p0, Lluac;->e:Z

    invoke-static {v0, p4, v2, v3, v4}, Lorg/luaj/vm2/compiler/DumpState;->dump(Lorg/luaj/vm2/Prototype;Ljava/io/OutputStream;ZIZ)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :goto_1
    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p1, v1, p3}, Lorg/luaj/vm2/Globals;->compilePrototype(Ljava/io/InputStream;Ljava/lang/String;)Lorg/luaj/vm2/Prototype;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, p2

    :goto_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, p2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p2, v1

    goto :goto_2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lluac;

    invoke-direct {v0, p0}, Lluac;-><init>([Ljava/lang/String;)V

    return-void
.end method
