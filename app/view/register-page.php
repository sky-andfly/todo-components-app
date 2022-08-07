<?php $this->layout('template', ['title' => 'Регистрация — МоиЗаметки']) ?>

<section>


        <h1 style="margin-top: 20px;">Регистрация</h1>
        <form class="create" action="/store" method="post">
            <label for="">Название:</label>
            <input name="title" type="text" >
            <label for="">Описание:</label>
            <textarea name="text" ></textarea>
            <button class="new" name="send" type="submit">Добавить</button>
        </form>
    </div>
</section>
