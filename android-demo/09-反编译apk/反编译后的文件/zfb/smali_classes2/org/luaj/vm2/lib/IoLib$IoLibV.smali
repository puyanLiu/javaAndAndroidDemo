.class final Lorg/luaj/vm2/lib/IoLib$IoLibV;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# instance fields
.field private a:Lorg/luaj/vm2/lib/IoLib$File;

.field public iolib:Lorg/luaj/vm2/lib/IoLib;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/luaj/vm2/lib/IoLib$File;Ljava/lang/String;ILorg/luaj/vm2/lib/IoLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->a:Lorg/luaj/vm2/lib/IoLib$File;

    iput-object p2, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->name:Ljava/lang/String;

    iput p3, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->opcode:I

    iput-object p4, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 5

    :try_start_0
    iget v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->opcode:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->NONE:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    invoke-virtual {v0}, Lorg/luaj/vm2/lib/IoLib;->_io_flush()Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    invoke-virtual {v0}, Lorg/luaj/vm2/lib/IoLib;->_io_tmpfile()Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/IoLib;->_io_close(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/IoLib;->_io_input(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/IoLib;->_io_output(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/IoLib;->_io_type(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const-string/jumbo v3, "r"

    invoke-virtual {p1, v2, v3}, Lorg/luaj/vm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/lib/IoLib;->_io_popen(Ljava/lang/String;Ljava/lang/String;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const-string/jumbo v3, "r"

    invoke-virtual {p1, v2, v3}, Lorg/luaj/vm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/lib/IoLib;->_io_open(Ljava/lang/String;Ljava/lang/String;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->isvalue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lorg/luaj/vm2/lib/IoLib;->_io_lines(Ljava/lang/String;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_9
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/lib/IoLib;->_io_read(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/lib/IoLib;->_io_write(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/IoLib;->_file_close(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/IoLib;->_file_flush(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v4, 0x400

    invoke-virtual {p1, v3, v4}, Lorg/luaj/vm2/Varargs;->optint(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/luaj/vm2/lib/IoLib;->_file_setvbuf(Lorg/luaj/vm2/LuaValue;Ljava/lang/String;I)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/IoLib;->_file_lines(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/lib/IoLib;->_file_read(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    const/4 v2, 0x2

    const-string/jumbo v3, "cur"

    invoke-virtual {p1, v2, v3}, Lorg/luaj/vm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/luaj/vm2/Varargs;->optint(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/luaj/vm2/lib/IoLib;->_file_seek(Lorg/luaj/vm2/LuaValue;Ljava/lang/String;I)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/luaj/vm2/lib/IoLib;->_file_write(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/IoLib;->_io_index(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_13
    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    iget-object v1, p0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->a:Lorg/luaj/vm2/lib/IoLib$File;

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/IoLib;->_lines_iter(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->access$000(Ljava/lang/Exception;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_1
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_d
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
