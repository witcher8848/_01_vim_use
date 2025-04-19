
with open('./bundle/vim-snippets/snippets/verilog_systemverilog.snippets', 'r', encoding='utf-8') as infile, open('./myinitvim/_03_update_sv_color.vim', 'w', encoding='utf-8') as outfile:
    # 遍历输入文件的每一行
    for line in infile:
        # 检查行是否以snippet开头
        if line.startswith('snippet'):
            # 替换snippet为指定字符串
            line = line.replace('snippet', 'au Syntax * syn keyword snippet_use ')
        else:
            continue
        # 将处理后的行写入输出文件
        outfile.write(line)
