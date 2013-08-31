package com.boyue;

import java.util.Random;

public class Test {

    /**
     * @param args
     */
    public static void main(String[] args) {
        // TODO Auto-generated method stub
        String[] names = {"李海洋","江德全","李越","李杨兰"};
        int index = 0;
        Random random = new Random();
        index = random.nextInt(1000)%4;
        System.out.print("洗碗：" + names[index]);
    }

}
